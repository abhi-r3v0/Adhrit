.class final Lo/setPersistenceEnabled$onMessageChannelReady$1;
.super Lo/setPersistenceEnabled$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 916
    invoke-direct {p0}, Lo/setPersistenceEnabled$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/purgeOutstandingWrites;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    sget-object v0, Lo/getReferenceFromUrl;->onTransact:Lo/getReferenceFromUrl;

    .line 1219
    invoke-virtual {p1, v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p1, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget p1, p1, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 1360
    iget-object v1, v1, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v1, p1, v0}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V

    :cond_0
    return-void
.end method
