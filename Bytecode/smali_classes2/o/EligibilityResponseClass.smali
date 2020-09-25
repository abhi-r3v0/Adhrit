.class final Lo/EligibilityResponseClass;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/getApplication_external_id;

.field private final synthetic onMessageChannelReady:I

.field private final synthetic onPostMessage:Lo/setLastItem;


# direct methods
.method constructor <init>(Lo/getApplication_external_id;Lo/setLastItem;I)V
    .locals 0

    iput-object p1, p0, Lo/EligibilityResponseClass;->extraCallback:Lo/getApplication_external_id;

    iput-object p2, p0, Lo/EligibilityResponseClass;->onPostMessage:Lo/setLastItem;

    iput p3, p0, Lo/EligibilityResponseClass;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/EligibilityResponseClass;->extraCallback:Lo/getApplication_external_id;

    invoke-static {v0}, Lo/getApplication_external_id;->onPostMessage(Lo/getApplication_external_id;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/EligibilityResponseClass;->extraCallback:Lo/getApplication_external_id;

    iget-object v2, p0, Lo/EligibilityResponseClass;->onPostMessage:Lo/setLastItem;

    iget v3, p0, Lo/EligibilityResponseClass;->onMessageChannelReady:I

    invoke-static {v1, v2, v3}, Lo/getApplication_external_id;->onNavigationEvent(Lo/getApplication_external_id;Lo/setLastItem;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
