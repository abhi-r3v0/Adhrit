.class final Lo/setChipStrokeColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Lo/zzir;

.field private final synthetic onPostMessage:Lo/setCheckedIconResource;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/zzir;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipStrokeColor;->onPostMessage:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipStrokeColor;->onNavigationEvent:Lo/zzir;

    iput-object p3, p0, Lo/setChipStrokeColor;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setChipStrokeColor;->onPostMessage:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setChipStrokeColor;->onPostMessage:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setChipStrokeColor;->onNavigationEvent:Lo/zzir;

    iget-object v2, p0, Lo/setChipStrokeColor;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Ljava/lang/String;)V

    return-void
.end method
