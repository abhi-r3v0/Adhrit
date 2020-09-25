.class Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Ljava/io/File;Lo/InstrumentAttribute;Lo/ViesPayPayloadJsonAdapter;Lo/InstrumentAttributeJsonAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

.field final synthetic onMessageChannelReady:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->ICustomTabsCallback:Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    iput-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->onMessageChannelReady:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 291
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->ICustomTabsCallback:Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->onMessageChannelReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 293
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->ICustomTabsCallback:Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;)V

    .line 294
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;->ICustomTabsCallback:Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;)Lo/InstrumentAttribute;

    move-result-object v1

    invoke-interface {v1}, Lo/InstrumentAttribute;->onNavigationEvent()V

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
