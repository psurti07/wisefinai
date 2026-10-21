@extends('layouts.front')
@push('css')
    <link rel="stylesheet" href="{{ asset('front/css/custom.css') }}">
@endpush
@push('style-css')
@endpush
@section('content')
    <section class="page-hero-section">
        <div class="page-hero-section-overlay bg--green-100 bg--scroll">
            <div class="container">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-md-12 text-center">
                        <div class="txt-block left-column">
                            <span class="section-id"></span>
                            <h2 class="s-28 mb-5">{{ $mainTitle }}</h2>
                            <p class="s-16 color--grey mt-0">
                                {{ $subTitle }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="privacy-page" class="gr--white py-80 division">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="border p-4 r-12">
                        <h5 class="fw-bold mt-4 mb-3">1. Purpose</h5>
                        <p>
                            WiseFin AI is committed to treating every customer fairly,
                            transparently and respectfully. This policy explains how
                            customers can raise a complaint about our services, who will
                            handle it, how quickly we will respond, and where the customer
                            can escalate the matter if they are not satisfied with our
                            response.
                        </p>

                        <p>
                            It is issued in line with the Consumer Protection Act, 2019
                            and the Consumer Protection (E-Commerce) Rules, 2020, and
                            supports the grievance redressal expectations that apply to
                            lending service providers working with RBI-regulated lenders.
                        </p>

                        <h5 class="fw-bold mt-5 mb-3">2. About WiseFin AI</h5>

                        <div class="table-responsive mb-3">
                            <table class="table table-bordered table-sm align-middle">
                                <tbody>
                                    <tr>
                                        <th scope="row" class="w-25">Legal Name</th>
                                        <td>WiseFin AI</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Constitution</th>
                                        <td>Sole Proprietorship</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Udyam Registration</th>
                                        <td>UDYAM-GJ-22-0626066</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">GSTIN</th>
                                        <td>24AWNPK7392L1ZT</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Office Address</th>
                                        <td>
                                            Office 215, Sky View, Opp. MD Landmark,
                                            Sarthana Jakatnaka, Varachha, Surat,
                                            Gujarat – 395010, India
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Website</th>
                                        <td>
                                            https://wisefinai.com
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Nature of Business</th>
                                        <td>
                                            Independent loan consultation and
                                            application-assistance services for personal
                                            and business loans across India on a paid
                                            consultation basis.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <p>
                            <strong>Important:</strong> WiseFin AI is not a bank, NBFC
                            or lender and does not lend money. Loan sanction, interest
                            rate, lender fees, disbursement, repayment and recovery are
                            decided solely by the respective lender under its own
                            policies. WiseFin AI does not guarantee loan approval.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">3. Consultation Fee</h5>

                        <p>
                            WiseFin AI charges a consultation fee of ₹499 + GST
                            (as applicable), collected online through authorised payment
                            gateways (Razorpay / PayU).
                        </p>

                        <p>
                            The fee is for consulting and application-assistance services
                            only. It is not a loan processing fee charged on behalf of
                            any lender and is not a guarantee of loan approval. A GST
                            invoice is issued for every payment.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">
                            4. What This Policy Covers
                        </h5>

                        <p>Customers may raise a grievance about any of the following:</p>

                        <ul>
                            <li>
                                Quality, delay or non-delivery of consultation or
                                assistance services.
                            </li>
                            <li>Consultation fee, payment, invoice or refund matters.</li>
                            <li>
                                Conduct or behaviour of any WiseFin AI staff member
                                or representative.
                            </li>
                            <li>
                                Information provided by us that the customer believes
                                was incorrect or misleading.
                            </li>
                            <li>
                                Handling, use or security of personal data shared
                                with us.
                            </li>
                            <li>Unwanted calls or messages from WiseFin AI.</li>
                        </ul>

                        <h6 class="fw-bold mt-4 mb-3">
                            Lender-Related Matters (Outside the Scope of This Policy)
                        </h6>

                        <p>
                            WiseFin AI acts only as an independent consultant and does
                            not lend, sanction, price, disburse or recover any loan.
                            Decisions relating to eligibility, approval or rejection,
                            loan amount, interest rate, lender charges, loan agreement
                            terms, disbursement, EMI, repayment, foreclosure, credit
                            bureau reporting and recovery are taken solely by the
                            respective lender.
                        </p>

                        <p>
                            Complaints about these matters must be raised directly with
                            the concerned lender through its grievance redressal mechanism.
                            If the lender does not resolve the complaint within 30 days,
                            the borrower may approach the RBI through its Complaint Management System,
                            where applicable. On request, WiseFin AI will help the customer
                            identify the correct lender contact as a courtesy.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">5. Grievance Officer</h5>

                        <div class="table-responsive mb-3">
                            <table class="table table-bordered table-sm align-middle">
                                <tbody>
                                    <tr>
                                        <th scope="row" class="w-25">Name</th>
                                        <td>Mr. Dinesh Kotadiya</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Designation</th>
                                        <td>Manager &amp; Grievance Officer</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Email</th>
                                        <td>
                                            support@wisefinai.com
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">WhatsApp</th>
                                        <td>
                                            +91 91061 71932
                                            <small class="text-muted d-block">
                                                Messages only; complaints are registered
                                                by email.
                                            </small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Working Hours</th>
                                        <td>
                                            Monday to Saturday, 10:00 AM – 5:00 PM
                                            (closed on Sundays and public holidays)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Address</th>
                                        <td>
                                            Office 215, Sky View, Opp. MD Landmark,
                                            Sarthana Jakatnaka, Varachha, Surat,
                                            Gujarat – 395010, India
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
 
                        <h5 class="fw-bold mt-5 mb-3">
                            6. How to Raise a Grievance
                        </h5>

                        <p>
                            Send an email to support@wisefinai.com ,
                            preferably from your registered email ID, using the subject
                            line:
                            <strong>Grievance – Mr. Dinesh Kotadiya</strong>
                        </p>

                        <p>Please include the following details:</p>

                        <ul>
                            <li>Full name, registered mobile number and email ID.</li>
                            <li>
                                Payment, order or transaction ID and payment date,
                                if applicable.
                            </li>
                            <li>A clear description of the issue and expected resolution.</li>
                            <li>Any supporting documents or screenshots.</li>
                        </ul>

                        <p>
                            Please do not share OTPs, passwords, full card numbers or bank
                            login details in any complaint. WiseFin AI will never ask
                            for these.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">7. Response Timelines</h5>

                        <div class="table-responsive mb-3">
                            <table class="table table-bordered table-sm align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">Stage</th>
                                        <th scope="col">Timeline</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Acknowledgement of complaint with a unique
                                            Grievance Reference Number
                                        </td>
                                        <td>Within 48 hours of receipt</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Review and response by the Grievance Officer
                                        </td>
                                        <td>Usually within 3–4 working days</td>
                                    </tr>
                                    <tr>
                                        <td>Complex cases needing more time</td>
                                        <td>
                                            Interim update with reasons and expected date;
                                            final resolution within 30 days of receipt
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <p>
                            The Grievance Reference Number lets you track your complaint.
                            Please quote it in all follow-up communication. Working days
                            are Monday to Saturday, excluding public holidays.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">8. Escalation</h5>

                        <p>
                            All grievances about WiseFin AI's services are handled by
                            the Grievance Officer named in Section 5 at support@wisefinai.com .
                            If you are not satisfied with the first response, reply to
                            the same email quoting your Grievance Reference Number.
                            The matter will be re-examined and answered in writing.
                        </p>

                        <p>
                            Nothing in this policy limits any right a customer has under
                            the Consumer Protection Act, 2019 or any other applicable law.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">
                            9. Refunds and Cancellations
                        </h5>

                        <p>
                            Refund eligibility, timelines and the process for requesting
                            a refund are governed by our Cancellation &amp; Refund Policy,
                            available at Cancellation &amp; Refund Policy .
                            A refund-related complaint may also be raised under this
                            policy if the refund request has not been handled as described
                            there.
                        </p>
 
                        <h5 class="fw-bold mt-5 mb-3">10. Principles We Follow</h5>

                        <ul>
                            <li>
                                Every complaint is recorded, numbered and tracked until
                                it is closed.
                            </li>
                            <li>
                                Complaints are handled fairly, without bias, and the
                                customer is told the reason for the decision in writing.
                            </li>
                            <li>
                                No customer will be treated unfavourably for raising
                                a complaint.
                            </li>
                            <li>
                                Information shared in a complaint is kept confidential
                                and used only to resolve it, as described in our
                                Privacy Policy.
                            </li>
                            <li>
                                Grievance records are retained and reviewed periodically
                                to identify and fix recurring issues.
                            </li>
                        </ul>
 
                        <h5 class="fw-bold mt-5 mb-3">
                            11. Review of This Policy
                        </h5>

                        <p>
                            This policy is reviewed at least once a year, or earlier if
                            applicable laws or regulations change. The latest version is
                            always published on our website. Questions about this policy
                            can be sent to support@wisefinai.com.
                        </p>

                        <p class="mb-4">
                            <strong>Issued by:</strong> WiseFin AI, Surat, Gujarat
                            <br>
                            <strong>Last updated:</strong> 20 October 2026
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr class="divider" />
@endsection
@push('script-src')
@endpush
@push('scripts')
@endpush
