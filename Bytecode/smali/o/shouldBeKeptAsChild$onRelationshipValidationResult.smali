.class public final Lo/shouldBeKeptAsChild$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldBeKeptAsChild;-><init>(Lo/dispatchAddStarting;Ljava/lang/String;Lo/onSessionEvent;Lo/snapFromFling;Lo/shouldBeKeptAsChild$ICustomTabsCallback;Ljava/lang/String;ZLo/add;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/upi/CredUpiPresenter$listItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/shouldBeKeptAsChild;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lo/shouldBeKeptAsChild$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldBeKeptAsChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x7b3a781b

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "SET_MPIN"

    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    instance-of p1, p2, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lo/shouldBeKeptAsChild$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldBeKeptAsChild;

    .line 1044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 100
    new-instance p3, Lo/snapFromFling$onNavigationEvent;

    check-cast p2, Lcom/cred/pay/repository/models/VpaAccount;

    .line 1049
    iget-object v0, p2, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 2048
    iget-object v1, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 2072
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 100
    invoke-direct {p3, v0, v1}, Lo/snapFromFling$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Lo/postShow;

    .line 3040
    iput-object p3, p1, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 101
    iget-object p1, p0, Lo/shouldBeKeptAsChild$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldBeKeptAsChild;

    .line 3044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 4031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 101
    new-instance p3, Lo/snapFromFling$asBinder;

    sget-object v0, Lo/dispatchAddFinished;->onPostMessage:Lo/dispatchAddFinished;

    check-cast v0, Lo/onAddStarting;

    new-instance v1, Lo/snapFromFling$onNavigationEvent;

    .line 4049
    iget-object v2, p2, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 5048
    iget-object p2, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 5072
    iget-object p2, p2, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 101
    invoke-direct {v1, v2, p2}, Lo/snapFromFling$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lo/postShow;

    invoke-direct {p3, v0, v1}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
