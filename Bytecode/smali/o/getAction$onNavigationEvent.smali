.class public final Lo/getAction$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getSupportCompoundDrawablesTintList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final enable_system_alarm_service_default:I = 0x7f050005

.field public static final enable_system_foreground_service_default:I = 0x7f050006

.field public static final enable_system_job_service_default:I = 0x7f050007

.field public static final workmanager_test_configuration:I = 0x7f05000e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 1

    .line 1307
    iget v0, p1, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 1489
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
