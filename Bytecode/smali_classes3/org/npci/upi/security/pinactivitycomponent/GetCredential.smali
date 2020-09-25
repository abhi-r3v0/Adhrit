.class public Lorg/npci/upi/security/pinactivitycomponent/GetCredential;
.super Landroidx/appcompat/app/ActionBarActivity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clContext:Lorg/npci/upi/security/pinactivitycomponent/c;

.field private configuration:Lorg/json/JSONObject;

.field private final context:Landroid/content/Context;

.field private controls:Lorg/json/JSONObject;

.field private credAllowed:Lorg/json/JSONArray;

.field private currentFragment:Lorg/npci/upi/security/pinactivitycomponent/ae;

.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private doubleBackToExitPressedOnce:Z

.field private inputAnalyzer:Lorg/npci/upi/security/pinactivitycomponent/v;

.field private languagePref:Ljava/lang/String;

.field private mActivityHeight:I

.field private mTransactionBarArrow:Landroid/widget/ImageView;

.field private mTransactionDetailScroller:Landroid/view/View;

.field private mTransactionDetailSpace:Landroid/view/View;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private numDigitsOfOTP:I

.field private payInfoArray:Lorg/json/JSONArray;

.field private salt:Lorg/json/JSONObject;

.field private smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBarActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->configuration:Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->controls:Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->salt:Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credAllowed:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    const-string v1, "en_US"

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->languagePref:Ljava/lang/String;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iput-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic access$000(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V
    .locals 0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->goBack()V

    return-void
.end method

.method static synthetic access$1000(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)I
    .locals 0

    iget p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    return p0
.end method

.method static synthetic access$200(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Lorg/npci/upi/security/pinactivitycomponent/ae;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/ae;

    return-object p0
.end method

.method static synthetic access$300(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Z
    .locals 0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->isTransactionDetailsExpanded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->toggleTransactionDetails(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private appInit()V
    .locals 3

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/v;

    invoke-direct {v0}, Lorg/npci/upi/security/pinactivitycomponent/v;-><init>()V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->inputAnalyzer:Lorg/npci/upi/security/pinactivitycomponent/v;

    :try_start_0
    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->inputAnalyzer:Lorg/npci/upi/security/pinactivitycomponent/v;

    invoke-direct {v0, v1, v2, p0}, Lorg/npci/upi/security/pinactivitycomponent/c;-><init>(Landroid/content/Context;Lorg/npci/upi/security/pinactivitycomponent/v;Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->clContext:Lorg/npci/upi/security/pinactivitycomponent/c;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->inputAnalyzer:Lorg/npci/upi/security/pinactivitycomponent/v;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/v;->a(Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing and validating arguments to CL"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/d;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private goBack()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error"

    const-string v2, "USER_ABORTED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/c;->d()Landroid/os/ResultReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isATMPinFlow()Z
    .locals 11

    const-string v0, "ATMPIN"

    const-string v1, "SMS|EMAIL|HOTP|TOTP"

    const-string v2, "MPIN"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credAllowed:Lorg/json/JSONArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v1, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credAllowed:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v1, v7, :cond_3

    :try_start_0
    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credAllowed:Lorg/json/JSONArray;

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v9, "subtype"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    aget-object v7, v2, v1

    aget-object v9, v0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    aget-object v7, v2, v1

    aget-object v9, v0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    aget-object v7, v2, v1

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    return v8

    :cond_4
    return v4
.end method

.method private isTransactionDetailsExpanded()Z
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private pix(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private readArguments()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->configuration:Lorg/json/JSONObject;

    :cond_0
    const-string v1, "controls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->controls:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v1, "CredAllowed"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->credAllowed:Lorg/json/JSONArray;

    :cond_1
    const-string v1, "salt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->salt:Lorg/json/JSONObject;

    :cond_2
    const-string v1, "payInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    :cond_3
    const-string v1, "languagePref"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->languagePref:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->languagePref:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method private registerSMSReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    :try_start_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register SMS broadcast receiver (Ignoring)"

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupKeyboard()V
    .locals 2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->fragmentTelKeyboard:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/o;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/o;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setOnKeyPressCallback(Lorg/npci/upi/security/pinactivitycomponent/ac;)V

    :cond_0
    return-void
.end method

.method private toggleTransactionDetails(Z)V
    .locals 5

    const/16 v0, 0x12c

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionBarArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v1, v0, v3}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->rotateView(FFILandroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->rotateView(FFILandroid/view/View;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mActivityHeight:I

    :cond_1
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    int-to-float v4, v0

    mul-float v4, v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/t;

    invoke-direct {v2, p0, p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/t;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_4
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private unregisterSMSReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister SMS receiver (Ignoring)"

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSMSReadPermission()Z
    .locals 1

    const-string v0, "android.permission.READ_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkSMSReceivePermission()Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->clContext:Lorg/npci/upi/security/pinactivitycomponent/c;

    return-object v0
.end method

.method public loadFragment(Lorg/npci/upi/security/pinactivitycomponent/ae;Landroid/os/Bundle;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1464
    :cond_0
    new-instance p2, Lo/binderDied;

    invoke-direct {p2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_inner_layout:I

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2343
    invoke-virtual {p2, v0, p1, v1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    .line 2651
    iget-boolean v0, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2655
    iput-boolean v0, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 2656
    iput-object p3, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    .line 2652
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2656
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setCurrentFragment(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    return-void

    .line 2341
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2656
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error"

    const-string v3, "USER_ABORTED"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/c;->d()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-super {p0}, Landroidx/appcompat/app/ActionBarActivity;->onBackPressed()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->doubleBackToExitPressedOnce:Z

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$string;->back_button_exit_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/n;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/n;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/k;

    invoke-direct {v0}, Lorg/npci/upi/security/pinactivitycomponent/k;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->readArguments()V

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->activity_pin_activity_component:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setupKeyboard()V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->appInit()V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->renderTransactionBar()V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->renderTransactionDetails()V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->isATMPinFlow()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/a;

    invoke-direct {p1}, Lorg/npci/upi/security/pinactivitycomponent/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/ao;

    invoke-direct {p1}, Lorg/npci/upi/security/pinactivitycomponent/ao;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->loadFragment(Lorg/npci/upi/security/pinactivitycomponent/ae;Landroid/os/Bundle;Z)V

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->go_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/m;

    invoke-direct {v0, p0}, Lorg/npci/upi/security/pinactivitycomponent/m;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/ActionBarActivity;->onDestroy()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/ActionBarActivity;->onPause()V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->unregisterSMSReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/ActionBarActivity;->onResume()V

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->checkSMSReceivePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/u;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Lorg/npci/upi/security/pinactivitycomponent/m;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->smsReceiver:Lorg/npci/upi/security/pinactivitycomponent/u;

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->registerSMSReceiver()V

    return-void

    :cond_0
    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    const-string v1, "RECEIVE_SMS permission not provided by the App. This will affect Auto OTP detection feature of Common Library"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method renderTransactionBar()V
    .locals 9

    const-string v0, "name"

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->configuration:Lorg/json/JSONObject;

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v3, "payerBankName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->salt:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "l12"

    const-string v2, "l12.message"

    invoke-direct {v0, p0, v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "txnAmount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    :try_start_0
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "payeeName"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "value"

    if-eqz v5, :cond_2

    :try_start_1
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    :goto_2
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "account"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mobileNumber"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "payinfo.mobilenumber.label"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    sget-object v6, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_3
    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_root:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    sget v5, Lorg/npci/upi/security/pinactivitycomponent/R$id;->tv_acc_or_payee:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_title:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_info:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_bar_arrow:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionBarArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u20b9 "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :goto_4
    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mActivityHeight:I

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/p;

    invoke-direct {v0, p0}, Lorg/npci/upi/security/pinactivitycomponent/p;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_scroller:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_expanded_space:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailScroller:Landroid/view/View;

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/q;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/q;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransactionDetailSpace:Landroid/view/View;

    if-eqz v0, :cond_9

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/s;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/s;-><init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_info_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    return-void
.end method

.method renderTransactionDetails()V
    .locals 8

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->layout_transaction_details_item:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_item_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lorg/npci/upi/security/pinactivitycomponent/R$id;->transaction_details_item_value:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->payInfoArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "value"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->pix(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-static {v1, v2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public rotateView(FFILandroid/view/View;)V
    .locals 8

    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p1, p3

    invoke-virtual {v7, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setCurrentFragment(Lorg/npci/upi/security/pinactivitycomponent/ae;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->currentFragment:Lorg/npci/upi/security/pinactivitycomponent/ae;

    return-void
.end method

.method public setNumDigitsOfOTP(I)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->numDigitsOfOTP:I

    return-void
.end method
