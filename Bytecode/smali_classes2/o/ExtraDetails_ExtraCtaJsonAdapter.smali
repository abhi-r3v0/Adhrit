.class public final Lo/ExtraDetails_ExtraCtaJsonAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Lo/LoanDetailJsonAdapter;

.field private final onMessageChannelReady:Lo/LoanDetailJsonAdapter;


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/LoanDetailJsonAdapter;->onPostMessage([B)Lo/LoanDetailJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/ExtraDetails_ExtraCtaJsonAdapter;->onMessageChannelReady:Lo/LoanDetailJsonAdapter;

    invoke-static {p2}, Lo/LoanDetailJsonAdapter;->onPostMessage([B)Lo/LoanDetailJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/ExtraDetails_ExtraCtaJsonAdapter;->ICustomTabsCallback:Lo/LoanDetailJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback()[B
    .locals 1

    iget-object v0, p0, Lo/ExtraDetails_ExtraCtaJsonAdapter;->ICustomTabsCallback:Lo/LoanDetailJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/LoanDetailJsonAdapter;->ICustomTabsCallback()[B

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()[B
    .locals 1

    iget-object v0, p0, Lo/ExtraDetails_ExtraCtaJsonAdapter;->onMessageChannelReady:Lo/LoanDetailJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/LoanDetailJsonAdapter;->ICustomTabsCallback()[B

    move-result-object v0

    return-object v0
.end method
