package pawsntails.shared;

/**
 * Helper class to validate all of the registration / account fields.
 */
public class AccountValidator {

    public static StringBuilder validate(String firstName, String lastName, String email, String password,
                                         String address1, String address2, String city, String state, String zipcode) {
        StringBuilder errorMessage = new StringBuilder();

        //TODO <Maybe> Make these better?
        if (firstName.isEmpty()) {
            errorMessage.append("Please make sure to enter your first name. <br />");
        } else if (firstName.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your first name is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (lastName.isEmpty()) {
            errorMessage.append("Please make sure to enter your last name. <br />");
        } else if (lastName.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your last name is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (email.isEmpty()) {
            errorMessage.append("Please make sure to enter the email address tied to your account. <br />");
        } else if (email.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your email address is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (password.isEmpty()) {
            errorMessage.append("Please include the password to your account. <br />");
        } else if (password.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your password is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (address1.isEmpty()) {
            errorMessage.append("Please make sure to enter an address for your account. <br />");
        } else if (address1.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your address is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (address2.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your address is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (city.isEmpty()) {
            errorMessage.append("Please make sure to enter a city for your account. <br />");
        } else if (city.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your city is under " + Strings.STRING_LEN + " characters. <br />");
        }

        if (state.isEmpty()) {
            errorMessage.append("Please make sure to enter a state for your account <br />");
        } else if (state.length() > 2) {
            errorMessage.append("Please make sure your select a valid state. <br />");
        }

        if (zipcode.isEmpty()) {
            errorMessage.append("Please make sure to enter an zip code your account <br />");
        } else if (zipcode.length() != 5) {
            errorMessage.append("Please make sure your zip code is 5 digits. <br />");
        } else {
            try {
                Integer.parseInt(zipcode);
            } catch (NumberFormatException e) {
                errorMessage.append("Please make sure your zip code is 5 digits. <br />");
            }
        }

        return errorMessage;
    }
}
