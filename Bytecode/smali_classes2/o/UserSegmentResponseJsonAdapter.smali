.class final Lo/UserSegmentResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:I

.field private final synthetic extraCallback:Lo/SupportedJsonAdapter;

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/SupportedJsonAdapter;II)V
    .locals 0

    iput-object p1, p0, Lo/UserSegmentResponseJsonAdapter;->extraCallback:Lo/SupportedJsonAdapter;

    iput p2, p0, Lo/UserSegmentResponseJsonAdapter;->onPostMessage:I

    iput p3, p0, Lo/UserSegmentResponseJsonAdapter;->ICustomTabsCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/UserSegmentResponseJsonAdapter;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/UserSegmentResponseJsonAdapter;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    iget v1, p0, Lo/UserSegmentResponseJsonAdapter;->onPostMessage:I

    iget v2, p0, Lo/UserSegmentResponseJsonAdapter;->ICustomTabsCallback:I

    invoke-interface {v0, v1, v2}, Lo/BankOfferDetailsResponse;->ICustomTabsCallback(II)V

    :cond_0
    return-void
.end method
