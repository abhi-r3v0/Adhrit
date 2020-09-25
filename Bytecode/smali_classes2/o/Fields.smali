.class public final Lo/Fields;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LeaderBoardJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/EntityJsonAdapter;

.field private final ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/PlutusOrderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/PlutusOrderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/PlutusOrderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/content/Context;

.field private onMessageChannelReady:Lo/applyTo;

.field private onNavigationEvent:Z

.field private final onPostMessage:Lo/getDomesticTransactions;

.field private final onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/PlutusOrderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/EntityJsonAdapter;Lo/push;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/InputDataJsonAdapter;

    invoke-direct {v0, p0}, Lo/InputDataJsonAdapter;-><init>(Lo/Fields;)V

    iput-object v0, p0, Lo/Fields;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/LeaderBoardEntryJsonAdapter;

    invoke-direct {v0, p0}, Lo/LeaderBoardEntryJsonAdapter;-><init>(Lo/Fields;)V

    iput-object v0, p0, Lo/Fields;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/LeaderBoardInnerCardJsonAdapter;

    invoke-direct {v0, p0}, Lo/LeaderBoardInnerCardJsonAdapter;-><init>(Lo/Fields;)V

    iput-object v0, p0, Lo/Fields;->asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/LeaderBoardInnerCard;

    invoke-direct {v0, p0}, Lo/LeaderBoardInnerCard;-><init>(Lo/Fields;)V

    iput-object v0, p0, Lo/Fields;->onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iput-object p1, p0, Lo/Fields;->ICustomTabsCallback:Lo/EntityJsonAdapter;

    iput-object p3, p0, Lo/Fields;->extraCallback:Landroid/content/Context;

    new-instance p1, Lo/getDomesticTransactions;

    invoke-direct {p1, p3}, Lo/getDomesticTransactions;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/Fields;->onPostMessage:Lo/getDomesticTransactions;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lo/push;->extraCallback(Lo/GameCta;)Lo/applyTo;

    move-result-object p1

    iput-object p1, p0, Lo/Fields;->onMessageChannelReady:Lo/applyTo;

    new-instance p2, Lo/FieldsJsonAdapter;

    invoke-direct {p2, p0}, Lo/FieldsJsonAdapter;-><init>(Lo/Fields;)V

    new-instance p3, Lo/LeaderBoardEntry;

    invoke-direct {p3, p0}, Lo/LeaderBoardEntry;-><init>(Lo/Fields;)V

    invoke-virtual {p1, p2, p3}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    iget-object p1, p0, Lo/Fields;->ICustomTabsCallback:Lo/EntityJsonAdapter;

    iget-object p1, p1, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {p1}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Core JS tracking ad unit: "

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/Fields;)Lo/EntityJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/Fields;->ICustomTabsCallback:Lo/EntityJsonAdapter;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/Fields;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/Fields;->onNavigationEvent:Z

    return p1
.end method

.method static synthetic onPostMessage(Lo/Fields;)Lo/getDomesticTransactions;
    .locals 0

    iget-object p0, p0, Lo/Fields;->onPostMessage:Lo/getDomesticTransactions;

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/PlutusOrderJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/Fields;->asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/visibilityChanged"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/Fields;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/Fields;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/Fields;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Fields;->onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/logScionEvent"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/Fields;->onMessageChannelReady:Lo/applyTo;

    new-instance v1, Lo/InputData;

    invoke-direct {v1, p0}, Lo/InputData;-><init>(Lo/Fields;)V

    new-instance v2, Lo/SuggestedAmount$$Parcelable;

    invoke-direct {v2}, Lo/SuggestedAmount$$Parcelable;-><init>()V

    invoke-virtual {v0, v1, v2}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    iget-object v0, p0, Lo/Fields;->onMessageChannelReady:Lo/applyTo;

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    return-void
.end method

.method final onNavigationEvent(Lo/PlutusOrderJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/Fields;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/Fields;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/Fields;->asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/visibilityChanged"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/Fields;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Fields;->onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/logScionEvent"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lo/Fields;->onMessageChannelReady:Lo/applyTo;

    new-instance v0, Lo/LeaderBoard;

    invoke-direct {v0, p0, p1}, Lo/LeaderBoard;-><init>(Lo/Fields;Lorg/json/JSONObject;)V

    new-instance p1, Lo/SuggestedAmount$$Parcelable;

    invoke-direct {p1}, Lo/SuggestedAmount$$Parcelable;-><init>()V

    invoke-virtual {p2, v0, p1}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-boolean v0, p0, Lo/Fields;->onNavigationEvent:Z

    return v0
.end method
