.class final Lo/isCardNotVerified;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/AuthSupportedResponse$MetaData;

.field private final synthetic onNavigationEvent:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/AuthSupportedResponse$MetaData;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/isCardNotVerified;->extraCallback:Lo/AuthSupportedResponse$MetaData;

    iput-object p2, p0, Lo/isCardNotVerified;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/isCardNotVerified;->extraCallback:Lo/AuthSupportedResponse$MetaData;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Lo/AuthSupportedResponse$MetaData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/isCardNotVerified;->extraCallback:Lo/AuthSupportedResponse$MetaData;

    iget-object v2, p0, Lo/isCardNotVerified;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v2}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Lo/AuthSupportedResponse$MetaData;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lo/isCardNotVerified;->extraCallback:Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Lo/AuthSupportedResponse$MetaData;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
