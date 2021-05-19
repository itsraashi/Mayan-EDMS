��    7      �  I   �      �     �  �   �  �   x  B  l    �  s  �  d   ;
    �
  +  �  �   �  #  �    �  �   �  2  h  u  �  Z     ^   l  8   �  �     �   �  C   �  �   �  2  �  �   �  �  �  b   E  �  �     1!     2"     9"     >"     O"     ]"  =   z"     �"     �"  
   �"  
   �"     �"     �"     #     +#     4#  d   N#  `   �#     $  �   #$    %  O   *&    z&     �'     �'     �'  x  �'  t  *)  *   �*  �  �*    d,    y.  �  �1  �  R4     7  �  8  �  �>  �  �C  �  �E  +  +H  *  WJ  w  �K    �M  �   Q  �   �Q  �   �R  Y  !S  �  {T  �   NV  �  �V  �  ]X  �  5_    �`  �   �c  x  �d  Z  7h     �j     �j  +   �j  )   �j  ;   k  r   Bk  
   �k  6   �k     �k     l  #   &l  *   Jl  ?   ul     �l  7   �l  �    m  �   �m  !   �n  �  �n  !  �p  �   �r  7  �s     �u  #   �u     v    "v         1   .   &                   *           ,   4          3          "       2   /                      +         #            %          $   !              5          
         7       (          	           '            6       -      0              )       "%s" not a valid entry. A boolean that specifies whether to use the X-Forwarded-Host header in preference to the Host header. This should only be enabled if a proxy which sets this header is in use. A boolean that specifies whether to use the X-Forwarded-Port header in preference to the SERVER_PORT META variable. This should only be enabled if a proxy which sets this header is in use. USE_X_FORWARDED_HOST takes priority over this setting. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of IP addresses, as strings, that: Allow the debug() context processor to add some variables to the template context. Can use the admindocs bookmarklets even if not logged in as a staff user. Are marked as "internal" (as opposed to "EXTERNAL") in AdminEmailHandler emails. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the language code for this installation. This should be in standard language ID format. For example, U.S. English is "en-us". It serves two purposes: If the locale middleware isn't in use, it decides which translation is served to all users. If the locale middleware is active, it provides a fallback language in case the user's preferred language can't be determined or is not supported by the website. It also provides the fallback translation when a translation for a given literal doesn't exist for the user's preferred language. A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. A tuple representing a HTTP header/value combination that signifies a request is secure. This controls the behavior of the request object’s is_secure() method. Warning: Modifying this setting can compromise your site’s security. Ensure you fully understand your setup before changing it. Default: '' (Empty string). Password to use for the SMTP server defined in EMAIL_HOST. This setting is used in conjunction with EMAIL_HOST_USER when authenticating to the SMTP server. If either of these settings is empty, Django won't attempt authentication. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: '/accounts/profile/' The URL where requests are redirected after login when the contrib.auth.login view gets no next parameter. This is used by the login_required() decorator, for example. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: 2621440 (i.e. 2.5 MB). The maximum size in bytes that a request body may be before a SuspiciousOperation (RequestDataTooBig) is raised. The check is done when accessing request.body or request.POST and is calculated against the total request size excluding any file upload data. You can set this to None to disable the check. Applications that are expected to receive unusually large form posts should tune this setting. The amount of request data is correlated to the amount of memory needed to process the request and populate the GET and POST dictionaries. Large requests could be used as a denial-of-service attack vector if left unchecked. Since web servers don't typically perform deep request inspection, it's not possible to perform a similar check at that level. See also FILE_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: False. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_USE_TLS. Note that EMAIL_USE_TLS/EMAIL_USE_SSL are mutually exclusive, so only set one of those settings to True. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Default: None. The URL where requests are redirected after a user logs out using LogoutView (if the view doesn't get a next_page argument). If None, no redirect will be performed and the logout view will be rendered. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings Enter the new setting value. Is this settings being overridden by an environment variable? Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. URL to use when referring to static files located in STATIC_ROOT. Example: "/static/" or "http://static.example.com/" If not None, this will be used as the base path for asset definitions (the Media class) and the staticfiles app. It must end in a slash if set to a non-empty value. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2021-04-11 06:29+0000
Last-Translator: pyrotech <anastasios@tutamail.com>, 2021
Language-Team: Greek (https://www.transifex.com/rosarior/teams/13584/el/)
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 %s μη έγκυρη καταχώριση. Λογική τιμή που καθορίζει εάν θα χρησιμοποιηθεί η κεφαλίδα X-Forwarded-Host κατά προτίμηση από την κεφαλίδα Host. Αυτό θα πρέπει να ενεργοποιηθεί μόνο όταν χρησιμοποιείται ένας διακομιστής μεσολάβησης που ορίζει αυτήν την κεφαλίδα. Λογική τιμή που καθορίζει εάν θα χρησιμοποιηθεί η κεφαλίδα X-Forwarded-Port κατά προτίμηση από τη μεταβλητή SERVER_PORT META. Αυτό θα πρέπει να ενεργοποιηθεί μόνο όταν χρησιμοποιείται ένας διακομιστής μεσολάβησης που ορίζει αυτήν την κεφαλίδα. Το USE_X_FORWARDED_HOST έχει προτεραιότητα έναντι αυτής της ρύθμισης. Ένα λεξικό που περιέχει τις ρυθμίσεις για όλες τις βάσεις δεδομένων που θα χρησιμοποιηθούν με το Django. Είναι ένα ένθετο λεξικό του οποίου το περιεχόμενο αντιστοιχίζεται σε ένα ψευδώνυμο βάσης δεδομένων ενός λεξικού που περιέχει τις επιλογές για μια μεμονωμένη βάση δεδομένων. Η ρύθμιση DATABASES πρέπει να ρυθμίσει μια προεπιλεγμένη βάση δεδομένων. Μπορεί επίσης να καθοριστεί οποιοσδήποτε αριθμός πρόσθετων βάσεων δεδομένων. Μια λίστα διευθύνσεων IP, ως συμβολοσειρές, που: Επιτρέπουν στον debug() επεξεργαστή περιβάλλοντος εντοπισμού σφαλμάτων να προσθέσει ορισμένες μεταβλητές στο περιβάλλον προτύπου. Μπορεί να χρησιμοποιήσει τους σελιδοδείκτες admindocs ακόμη και αν δεν έχει συνδεθεί ως χρήστης προσωπικού. Επισημαίνονται ως"εσωτερικές" (σε αντίθεση με το "ΕΞΩΤΕΡΙΚΕΣ") στα μηνύματα ηλεκτρονικού ταχυδρομείου AdminEmailHandler. Μια λίστα με όλες τις διαθέσιμες γλώσσες. Πρόκειται για λίστα δύο πλειάδων στη μορφή (κωδικός γλώσσας, όνομα γλώσσας) για παράδειγμα, ('ja', 'Ιαπωνικά'). Αυτό καθορίζει ποιες γλώσσες είναι διαθέσιμες για επιλογή γλώσσας. Γενικά, η προεπιλεγμένη τιμή είναι αρκετή. Ορίστε αυτήν τη ρύθμιση μόνο εάν θέλετε να περιορίσετε την επιλογή γλώσσας σε ένα υποσύνολο των γλωσσών που παρέχονται από το Django. Μια λίστα κλάσεων υποκείμενων συστημάτων ελέγχου ταυτότητας (ως συμβολοσειρές) για χρήση κατά την απόπειρα ελέγχου ταυτότητας ενός χρήστη. Μια λίστα συμβολοσειρών που αντιπροσωπεύουν τα ονόματα κεντρικού υπολογιστή / τομέα που μπορεί να εξυπηρετήσει αυτός ο ιστότοπος. Αυτό είναι ένα μέτρο ασφαλείας για την αποτροπή επιθέσεων κεφαλίδας κεντρικού υπολογιστή HTTP, οι οποίες είναι δυνατές ακόμη και σε πολλές φαινομενικά ασφαλείς διαμορφώσεις διακομιστή ιστού. Οι τιμές σε αυτήν τη λίστα μπορούν να είναι πλήρως αναγνωρισμένα ονόματα (π.χ. «www.example.com»), οπότε θα αντιστοιχίζονται ακριβώς στην κεφαλίδα κεντρικού υπολογιστή του αιτήματος (χωρίς διάκριση πεζών-κεφαλαίων, χωρίς θύρα). Μια τιμή που ξεκινά με τελεία μπορεί να χρησιμοποιηθεί ως μπαλαντέρ υποτομέα: «.example.com» θα ταιριάζει με το example.com, το www.example.com και οποιονδήποτε άλλο υποτομέα του example.com. Η τιμή του '*' θα ταιριάζει με οτιδήποτε. Σε αυτήν την περίπτωση, είστε υπεύθυνοι να παράσχετε τη δική σας επικύρωση της κεφαλίδας κεντρικού υπολογιστή (ίσως σε ένα middleware, εάν ναι, αυτό το middleware πρέπει να αναφέρεται πρώτα στο MIDDLEWARE). Μια συμβολοσειρά που αντιπροσωπεύει τον κωδικό γλώσσας για αυτήν την εγκατάσταση. Αυτό πρέπει να είναι σε τυπική μορφή αναγνωριστικού γλώσσας. Για παράδειγμα, τα Αγγλικά των ΗΠΑ είναι "en-us". Εξυπηρετεί δύο σκοπούς: Εάν το τοπικό ενδιάμεσο λογισμικό δεν χρησιμοποιείται, αποφασίζει ποια μετάφραση θα χρησιμοποιείται σε όλους τους χρήστες. Εάν το τοπικό ενδιάμεσο λογισμικό είναι ενεργό, παρέχει εναλλακτική γλώσσα σε περίπτωση που η προτιμώμενη γλώσσα του χρήστη δεν μπορεί να προσδιοριστεί ή δεν υποστηρίζεται από τον ιστότοπο. Παρέχει επίσης την εναλλακτική μετάφραση όταν δεν υπάρχει μετάφραση για μια δεδομένη λέξη για την προτιμώμενη γλώσσα του χρήστη. Μια συμβολοσειρά που αντιπροσωπεύει τη ζώνη ώρας για αυτήν την εγκατάσταση. Σημειώστε ότι αυτό δεν είναι απαραίτητα η ζώνη ώρας του διακομιστή. Για παράδειγμα, ένας διακομιστής μπορεί να εξυπηρετεί πολλούς ιστότοπους με υποστήριξη Django, ο καθένας με ξεχωριστή ρύθμιση ζώνης ώρας. Μια πλειάδα που αντιπροσωπεύει έναν συνδυασμό κεφαλίδας/τιμής HTTP που σημαίνει ότι ένα αίτημα είναι ασφαλές. Αυτό ελέγχει τη συμπεριφορά της μεθόδου is_secure() του αντικειμένου του αιτήματος. Προειδοποίηση: Η τροποποίηση αυτής της ρύθμισης μπορεί να θέσει σε κίνδυνο την ασφάλεια του ιστότοπού σας. Βεβαιωθείτε ότι έχετε κατανοήσει πλήρως τη ρύθμισή σας πριν την αλλάξετε. Προεπιλογή: '' (Κενή συμβολοσειρά). Κωδικός πρόσβασης για χρήση για τον διακομιστή SMTP που ορίζεται στο EMAIL_HOST. Αυτή η ρύθμιση χρησιμοποιείται σε συνδυασμό με το EMAIL_HOST_USER κατά τον έλεγχο ταυτότητας στο διακομιστή SMTP. Εάν κάποια από αυτές τις ρυθμίσεις είναι κενή, το Django δεν θα επιχειρήσει έλεγχο ταυτότητας. Προεπιλογή: '' (Κενή συμβολοσειρά). Όνομα χρήστη για χρήση για τον διακομιστή SMTP που ορίζεται στο EMAIL_HOST. Εάν είναι άδειο, το Django δεν θα επιχειρήσει έλεγχο ταυτότητας. Προεπιλογή: '/accounts/login/' Η διεύθυνση URL όπου τα αιτήματα ανακατευθύνονται για σύνδεση, ειδικά όταν χρησιμοποιείτε login_required (). Αυτή η ρύθμιση δέχεται επίσης ονομαστικά μοτίβα διευθύνσεων URL τα οποία μπορούν να χρησιμοποιηθούν για τη μείωση της αναπαραγωγής διαμόρφωσης, καθώς δεν χρειάζεται να ορίσετε τη διεύθυνση URL σε δύο μέρη (ρυθμίσεις και URLconf) Προεπιλογή: '/accounts/profile/' Η διεύθυνση URL όπου τα αιτήματα ανακατευθύνονται μετά τη σύνδεση όταν η προβολή contrib.auth.login δεν λαμβάνει επόμενη παράμετρο. Αυτό χρησιμοποιείται για παράδειγμα από τον διακοσμητή login_required (). Αυτή η ρύθμιση δέχεται επίσης ονομαστικά μοτίβα διευθύνσεων URL τα οποία μπορούν να χρησιμοποιηθούν για τη μείωση της αναπαραγωγής διαμόρφωσης, καθώς δεν χρειάζεται να ορίσετε τη διεύθυνση URL σε δύο μέρη (ρυθμίσεις και URLconf) Προεπιλογή: 'django.contrib.sessions.backends.db'. Ελέγχει το μέρος αποθήκευσης των δεδομένων συνεδρίας του Django. Προεπιλογή: 'django.core.mail.backends.smtp.EmailBackend'. Το υποκείμενο σύστημα που χρησιμοποιείται για την αποστολή email. Προεπιλογή: «localhost». Ο κεντρικός υπολογιστής που θα χρησιμοποιηθεί για την αποστολή email. Προεπιλογή: 'sessionid'. Το όνομα του cookie που θα χρησιμοποιηθεί για περιόδους σύνδεσης. Αυτό μπορεί να είναι ό,τι επιθυμείτε (αρκεί να είναι διαφορετικό από τα άλλα ονόματα cookie στην εφαρμογή σας). Προεπιλογή: 'webmaster@localhost' Προεπιλεγμένη διεύθυνση email για χρήση για διάφορες αυτοματοποιημένες αλληλογραφίες από τον διαχειριστή(ες) του ιστότοπου. Αυτό δεν περιλαμβάνει μηνύματα σφάλματος που αποστέλλονται σε ADMINS και MANAGERS. για αυτό, ανατρέξτε στο SERVER_EMAIL. Προεπιλογή: 25. Θύρα για χρήση για τον διακομιστή SMTP που ορίζεται στο EMAIL_HOST. Προεπιλογή: 2621440 (δηλ. 2,5 MB). Το μέγιστο μέγεθος (σε byte) που θα έχει μια μεταφόρτωση πριν μεταφερθεί σε ροή στο σύστημα αρχείων. Ανατρέξτε στην ενότητα Διαχείριση αρχείων για λεπτομέρειες. Δείτε επίσης DATA_UPLOAD_MAX_MEMORY_SIZE. Προεπιλογή: 2621440 (δηλ. 2,5 MB). Το μέγιστο μέγεθος σε byte που μπορεί να είναι ένα σώμα αιτήματος πριν από την αύξηση του SuspiciousOperation (RequestDataTooBig). Ο έλεγχος γίνεται κατά την πρόσβαση στο request.body ή request.POST και υπολογίζεται με βάση το συνολικό μέγεθος του αιτήματος, εξαιρουμένων τυχόν δεδομένων μεταφόρτωσης αρχείων. Μπορείτε να το ρυθμίσετε σε None για να απενεργοποιήσετε τον έλεγχο. Οι εφαρμογές που αναμένεται να λάβουν ασυνήθιστα μεγάλες αναρτήσεις φόρμας θα πρέπει να τροποποιήσουν αναλόγως αυτή τη ρύθμιση. Ο όγκος των δεδομένων αιτήματος συσχετίζεται με την ποσότητα μνήμης που απαιτείται για την επεξεργασία του αιτήματος και τη συμπλήρωση των λεξικών GET και POST. Μεγάλα αιτήματα θα μπορούσαν να χρησιμοποιηθούν ως φορέας επίθεσης άρνησης υπηρεσίας εάν δεν είναι επιλεγμένο. Δεδομένου ότι οι διακομιστές ιστού δεν εκτελούν συνήθως έλεγχο αιτήματος σε βάθος, δεν είναι δυνατό να πραγματοποιηθεί παρόμοιος έλεγχος σε αυτό το επίπεδο. Δείτε επίσης FILE_UPLOAD_MAX_MEMORY_SIZE. Προεπιλογή: False. Εάν θα χρησιμοποιήσετε σύνδεση TLS (ασφαλής) όταν επικοινωνείτε με τον διακομιστή SMTP. Χρησιμοποιείται για ρητές συνδέσεις TLS, γενικά στη θύρα 587. Εάν αντιμετωπίζετε συνδέσεις αναμονής, δείτε την έμμεση ρύθμιση TLS EMAIL_USE_SSL Προεπιλογή: False. Εάν θα χρησιμοποιήσετε μια σιωπηρή σύνδεση TLS (ασφαλής) όταν μιλάτε στον διακομιστή SMTP. Στα περισσότερα έγγραφα ηλεκτρονικού ταχυδρομείου αυτός ο τύπος σύνδεσης TLS αναφέρεται ως SSL. Χρησιμοποιείται γενικά στη θύρα 465. Εάν αντιμετωπίζετε προβλήματα, ανατρέξτε στη ρητή ρύθμιση TLS EMAIL_USE_TLS. Λάβετε υπόψη ότι τα EMAIL_USE_TLS / EMAIL_USE_SSL είναι αμοιβαία αποκλειστικά, επομένως ορίστε μόνο μία από αυτές τις ρυθμίσεις σε True. Προεπιλογή: None. Καθορίζει ένα χρονικό όριο σε δευτερόλεπτα για τον αποκλεισμό λειτουργιών όπως η προσπάθεια σύνδεσης. Προεπιλογή: None. Η διεύθυνση URL όπου τα αιτήματα ανακατευθύνονται μετά από αποσύνδεση ενός χρήστη χρησιμοποιώντας το LogoutView (εάν η προβολή δεν λαμβάνει ένα όρισμα next_page). Εάν δεν υπάρχει, δεν θα πραγματοποιηθεί ανακατεύθυνση και θα αποδίδεται η προβολή αποσύνδεσης. Αυτή η ρύθμιση δέχεται επίσης ονομαστικά μοτίβα διευθύνσεων URL τα οποία μπορούν να χρησιμοποιηθούν για τη μείωση της αναπαραγωγής διαμόρφωσης, καθώς δεν χρειάζεται να ορίσετε τη διεύθυνση URL σε δύο μέρη (ρυθμίσεις και URLconf) Προεπιλογή: [] (Κενή λίστα). Λίστα συλλεγμένων αντικειμένων κανονικής έκφρασης που αντιπροσωπεύουν συμβολοσειρές User-Agent που δεν επιτρέπεται να επισκέπτονται οποιαδήποτε σελίδα, σε ολόκληρο το σύστημα. Χρησιμοποιήστε αυτό για κακόβουλα ρομπότ/ανιχνευτές. Αυτό χρησιμοποιείται μόνο εάν είναι εγκατεστημένο το CommonMiddleware (βλ. Middleware). Django Τροποποίηση Επεξεργασία ρύθμισης: %s Τροποποίηση ρυθμίσεων Εισαγάγετε τη νέα τιμή ρύθμισης. Αυτή η ρύθμιση παρακάμπτεται από μια μεταβλητή περιβάλλοντος; Όνομα Χώρος ονομάτων: %s, δεν βρέθηκε Χώροι ονομάτων Παράκαμψη Αρίθμηση ρυθμίσεων Ρύθμιση χώρων ονομάτων Η ρύθμιση ενημερώθηκε με επιτυχία. Ρυθμίσεις Ρυθμίσεις στο χώρο ονομάτων: %s Οι ρυθμίσεις που κληρονομούνται από μια μεταβλητή περιβάλλοντος έχουν προτεραιότητα και δεν μπορούν να αλλάξουν σε αυτήν την προβολή. Οι ρυθμίσεις ενημερώθηκαν, επανακινήστε την εγκατάσταση και ανανεώστε περιηγητή σας ώστε να τεθούν σε εφαρμογή οι αλλαγές. Έξυπνες ρυθμίσεις Η μηχανή αποθήκευσης αρχείων για χρήση κατά τη συλλογή στατικών αρχείων με την εντολή διαχείρισης collectstatic. Ένα έτοιμο προς χρήση στιγμιότυπο του συστήματος αποθήκευσης που ορίζεται σε αυτήν τη ρύθμιση βρίσκεται στο django.contrib.staticfiles.storage.staticfiles_storage. Η πλήρης διαδρομή Python του αντικειμένου εφαρμογής WSGI που θα χρησιμοποιούν οι ενσωματωμένοι διακομιστές του Django (π.χ. runserver). Η εντολή διαχείρισης django-admin startproject θα δημιουργήσει ένα απλό αρχείο wsgi.py με μια εφαρμογή που μπορεί να καλείται σε αυτό και θα κατευθύνει αυτήν τη ρύθμιση σε αυτήν την εφαρμογή. Η λίστα των επικυρωτών που χρησιμοποιούνται για τον έλεγχο της ισχύος των κωδικών πρόσβασης του χρήστη. Διεύθυνση URL για χρήση όταν αναφέρεται στα στατικά αρχεία που βρίσκονται στο STATIC_ROOT. Παράδειγμα: /static/ ή "http://static.example.com/" Εάν δεν έχει την τιμή None, αυτό θα χρησιμοποιηθεί ως η βασική διαδρομή για ορισμούς στοιχείων (κλάση πολυμέσων) και την εφαρμογή staticfiles. Πρέπει να καταλήγει σε πλαγία εάν οριστεί σε μη κενή τιμή. Τιμή Εμφάνιση ρυθμίσεων Προειδοποίηση Όταν οριστεί σε True, εάν η διεύθυνση URL του αιτήματος δεν ταιριάζει με κανένα από τα μοτίβα στο URLconf και δεν καταλήγει σε κάθετο, μια ανακατεύθυνση HTTP εκδίδεται στην ίδια διεύθυνση URL με προσαρτημένη μια κάθετο. Λάβετε υπόψη ότι η ανακατεύθυνση ενδέχεται να προκαλέσει απώλεια δεδομένων που υποβάλλονται σε αίτημα POST. Η ρύθμιση APPEND_SLASH χρησιμοποιείται μόνο εάν είναι εγκατεστημένο το CommonMiddleware (βλ. Middleware). Δείτε επίσης PREPEND_WWW. 