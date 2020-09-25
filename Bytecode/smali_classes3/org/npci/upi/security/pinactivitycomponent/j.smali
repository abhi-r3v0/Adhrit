.class public Lorg/npci/upi/security/pinactivitycomponent/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lin/org/npci/commonlibrary/e;

.field private b:Ljava/lang/String;

.field private c:Lorg/npci/upi/security/pinactivitycomponent/i;


# direct methods
.method public constructor <init>(Lin/org/npci/commonlibrary/e;Lorg/npci/upi/security/pinactivitycomponent/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->a:Lin/org/npci/commonlibrary/e;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lin/org/npci/commonlibrary/Message;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->a:Lin/org/npci/commonlibrary/e;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->b:Ljava/lang/String;

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lin/org/npci/commonlibrary/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lin/org/npci/commonlibrary/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Lin/org/npci/commonlibrary/Message;->setType(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lin/org/npci/commonlibrary/Message;->setSubType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lin/org/npci/commonlibrary/Message;->getData()Lin/org/npci/commonlibrary/Data;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "2.0|"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lin/org/npci/commonlibrary/Message;->getData()Lin/org/npci/commonlibrary/Data;

    move-result-object p3

    invoke-virtual {p3}, Lin/org/npci/commonlibrary/Data;->getEncryptedBase64String()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/org/npci/commonlibrary/Data;->setEncryptedBase64String(Ljava/lang/String;)V
    :try_end_0
    .catch Lin/org/npci/commonlibrary/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lin/org/npci/commonlibrary/Message;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "txnId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "credential"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "appId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobileNumber"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    if-nez v3, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "DBH in encryptor"

    invoke-static {v4, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/j;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {v3, v1, v2, p4}, Lorg/npci/upi/security/pinactivitycomponent/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p4, "K0 in encryptor"

    invoke-static {p4, v8}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "\\{([^}]*)\\}"

    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lorg/npci/upi/security/pinactivitycomponent/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lin/org/npci/commonlibrary/Message;

    move-result-object v0

    invoke-virtual {v0}, Lin/org/npci/commonlibrary/Message;->getData()Lin/org/npci/commonlibrary/Data;

    move-result-object p2

    invoke-virtual {p2}, Lin/org/npci/commonlibrary/Data;->getEncryptedBase64String()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    const-string v1, ""

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Encrypted Data: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CommonLibrary"

    invoke-static {p3, p2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lin/org/npci/commonlibrary/Message;->getData()Lin/org/npci/commonlibrary/Data;

    move-result-object p2

    invoke-virtual {p2, p1}, Lin/org/npci/commonlibrary/Data;->setEncryptedBase64String(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
