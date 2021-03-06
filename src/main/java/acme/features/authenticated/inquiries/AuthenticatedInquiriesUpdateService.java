
package acme.features.authenticated.inquiries;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.inquiries.Inquire;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractUpdateService;

@Service
public class AuthenticatedInquiriesUpdateService implements AbstractUpdateService<Authenticated, Inquire> {

	// Internal state ---------------------------------------------------------------------------------

	@Autowired
	AuthenticatedInquiriesRepository repository;


	// AbstractCreateService<Authenticated, Inquire> interface --------------------------------------

	@Override
	public boolean authorise(final Request<Inquire> request) {
		assert request != null;
		return true;
	}

	@Override
	public void bind(final Request<Inquire> request, final Inquire entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors, "creationMoment");
	}

	@Override
	public void unbind(final Request<Inquire> request, final Inquire entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "deadline", "paragraphs", "minMoney", "maxMoney", "email");
	}

	@Override
	public Inquire findOne(final Request<Inquire> request) {
		assert request != null;

		Inquire result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneById(id);

		return result;
	}

	@Override
	public void validate(final Request<Inquire> request, final Inquire entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;
		if (!errors.hasErrors()) {
			Boolean isFuture, isPositiveAmountMin, isPositiveAmountMax, isEuroMin, isEuroMax;

			// Validación de fecha futura
			Date fechaActual;
			fechaActual = new Date();
			isFuture = entity.getDeadline().after(fechaActual);
			errors.state(request, isFuture, "deadline", "errors.inquire.deadline.future", "Deadline must be in future");

			// Validación dinero positivo
			isPositiveAmountMin = entity.getMinMoney().getAmount() > 0;
			errors.state(request, isPositiveAmountMin, "minMoney", "errors.inquire.minMoney.amount-positive", "The amount must be positive");

			isPositiveAmountMax = entity.getMaxMoney().getAmount() > 0;
			errors.state(request, isPositiveAmountMax, "minMoney", "errors.inquire.maxMoney.amount-positive", "The amount must be positive");

			// Validación moneda
			isEuroMin = entity.getMinMoney().getCurrency().equals("EUR") || entity.getMinMoney().getCurrency().equals("€");
			errors.state(request, isEuroMin, "minMoney", "errors.inquire.minMoney.euro", "The money must be in euro '€' / 'EUR'");

			isEuroMax = entity.getMaxMoney().getCurrency().equals("EUR") || entity.getMaxMoney().getCurrency().equals("€");
			errors.state(request, isEuroMax, "maxMoney", "errors.inquire.maxMoney.money.euro", "The money must be in euro '€' / 'EUR'");

		}
	}

	@Override
	public void update(final Request<Inquire> request, final Inquire entity) {
		assert request != null;
		assert entity != null;

		this.repository.save(entity);
	}

}
