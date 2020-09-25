.class final Lo/onValidateInApp$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onValidateInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/waitForCustomerUserId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/waitForCustomerUserId;B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/onValidateInApp$ICustomTabsCallback;-><init>(Lo/waitForCustomerUserId;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 1

    .line 30
    check-cast p1, Lo/getCardBackgroundColor;

    if-nez p1, :cond_0

    .line 2020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/4 v0, 0x0

    .line 1040
    invoke-interface {p1, v0, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    .line 2413
    :cond_0
    iget v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-ltz v0, :cond_1

    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_1

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1044
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3020
    :cond_2
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1046
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void
.end method
