.class public final Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# static fields
.field private static final onMessageChannelReady:Ljava/nio/charset/Charset;

.field protected static final onNavigationEvent:Ljava/nio/charset/Charset;

.field public static final onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method public static onMessageChannelReady(Lo/getRewardUsageId;Lo/getRewardUsageId;)V
    .locals 1

    iget-object v0, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {p0}, Lo/UpcomingEmiDataJsonAdapter;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/UpcomingEmiDataJsonAdapter;

    iput-object p0, p1, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    :cond_0
    return-void
.end method
