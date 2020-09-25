.class public Lorg/npci/upi/security/pinactivitycomponent/d;
.super Ljava/lang/Exception;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CLException"

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->d:Landroid/content/Context;

    invoke-virtual {p0, p1, p3}, Lorg/npci/upi/security/pinactivitycomponent/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string p4, "CLException"

    iput-object p4, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->d:Landroid/content/Context;

    invoke-virtual {p0, p1, p3}, Lorg/npci/upi/security/pinactivitycomponent/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    const-string v2, "cl-messages_en_us.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/d;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ErrorMsg: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$string;->error_msg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p1, Landroid/app/Activity;

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->error_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->error_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
