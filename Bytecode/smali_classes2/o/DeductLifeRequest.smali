.class public final Lo/DeductLifeRequest;
.super Lo/AllotmentResponse;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/AllotmentResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Landroid/content/Context;Z)Lo/DeductLifeRequest;
    .locals 1

    invoke-static {p1, p2}, Lo/DeductLifeRequest;->onNavigationEvent(Landroid/content/Context;Z)V

    new-instance v0, Lo/DeductLifeRequest;

    invoke-direct {v0, p1, p0, p2}, Lo/DeductLifeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;Lo/EmiDetails;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SubmitScoreRequestJsonAdapter;",
            "Lo/LoanStatusResponse$CaptchaInput;",
            "Lo/EmiDetails;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/DeductLifeRequest;->mayLaunchUrl:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->warmup()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lo/AllotmentResponse;->onNavigationEvent(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;Lo/EmiDetails;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Lo/Users;

    const/16 v7, 0x18

    const-string v3, "1QeH3Cf7T53ayw17Ebbo9YTdhU+IFx0X5nCtC5gZQym4uicOVPXxYWmMK9k58i8n"

    const-string v4, "bHJRpFJ+2R5LAbYQUBDMyfYpLd1oiGixlpIqMJOBQPY="

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lo/Users;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lo/AllotmentResponse;->onNavigationEvent(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;Lo/EmiDetails;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
