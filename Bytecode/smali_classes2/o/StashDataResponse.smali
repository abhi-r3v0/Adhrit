.class final Lo/StashDataResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StashDataResponse_ScreenDataJsonAdapter;


# instance fields
.field private final synthetic onPostMessage:Lo/LoanStatusResponse$Input;


# direct methods
.method constructor <init>(Lo/LoanStatusResponse$Input;)V
    .locals 0

    iput-object p1, p0, Lo/StashDataResponse;->onPostMessage:Lo/LoanStatusResponse$Input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)B
    .locals 1

    iget-object v0, p0, Lo/StashDataResponse;->onPostMessage:Lo/LoanStatusResponse$Input;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse$Input;->onMessageChannelReady(I)B

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget-object v0, p0, Lo/StashDataResponse;->onPostMessage:Lo/LoanStatusResponse$Input;

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    return v0
.end method
