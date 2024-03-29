/**
 * Created by bjohnson on 3/16/24.
 */

public with sharing class StringChallenges {
    public class StringChallengesException extends Exception {}
    /**
     * Given a string return the same string with all letters in upper case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to upper case
     * @return the string in upper case
     */
    public static String toUpper(String str) {
        List<Integer> oldCharacters = str.getChars();
        List<Integer> newCharacters = new List<Integer>();

        for (Integer character : oldCharacters) {
            if (character >= 97 && character < 123) {
                newCharacters.add(character - 32);
            } else {
                newCharacters.add(character);
            }
        }

        str = String.fromCharArray(newCharacters);

        return str;
    }

    /**
     * Given a string return the same string with all letters in lower case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to lower case
     * @return the string in lower case
     */
    public static String toLower(String str) {
        List<Integer> oldCharacters = str.getChars();
        List<Integer> newCharacters = new List<Integer>();

        for (Integer character : oldCharacters) {
            if (character >= 65 && character < 91) {
                newCharacters.add(character + 32);
            } else {
                newCharacters.add(character);
            }
        }

        str = String.fromCharArray(newCharacters);

        return str;
    }
}