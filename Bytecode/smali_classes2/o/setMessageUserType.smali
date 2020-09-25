.class final Lo/setMessageUserType;
.super Lo/isUserMessage;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/isUserMessage;-><init>(Lo/Message;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/Message;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/setMessageUserType;-><init>()V

    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/Object;J)Lo/setClicked;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lo/setClicked<",
            "TE;>;"
        }
    .end annotation

    .line 24
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setClicked;

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 13
    invoke-static {p1, p3, p4}, Lo/setMessageUserType;->onNavigationEvent(Ljava/lang/Object;J)Lo/setClicked;

    move-result-object v0

    .line 14
    invoke-static {p2, p3, p4}, Lo/setMessageUserType;->onNavigationEvent(Ljava/lang/Object;J)Lo/setClicked;

    move-result-object p2

    .line 15
    invoke-interface {v0}, Lo/setClicked;->size()I

    move-result v1

    .line 16
    invoke-interface {p2}, Lo/setClicked;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 18
    invoke-interface {v0}, Lo/setClicked;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 19
    invoke-interface {v0, v2}, Lo/setClicked;->ICustomTabsCallback(I)Lo/setClicked;

    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0, p2}, Lo/setClicked;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 22
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Ljava/lang/Object;J)V
    .locals 0

    .line 10
    invoke-static {p1, p2, p3}, Lo/setMessageUserType;->onNavigationEvent(Ljava/lang/Object;J)Lo/setClicked;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lo/setClicked;->I_()V

    return-void
.end method
