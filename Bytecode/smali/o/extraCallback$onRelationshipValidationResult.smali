.class public final Lo/extraCallback$onRelationshipValidationResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0003J\u0008\u0010\u000f\u001a\u00020\u000cH\u0007J\u0008\u0010\u0010\u001a\u00020\u000cH\u0007J\u0008\u0010\u0011\u001a\u00020\u000cH\u0007J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/lifecycle/DispatchQueue;",
        "",
        "()V",
        "finished",
        "",
        "isDraining",
        "paused",
        "queue",
        "Ljava/util/Queue;",
        "Ljava/lang/Runnable;",
        "canRun",
        "drainQueue",
        "",
        "enqueue",
        "runnable",
        "finish",
        "pause",
        "resume",
        "runOrEnqueue",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final abc_action_bar_home_description:I = 0x7f130007

.field public static final abc_action_bar_up_description:I = 0x7f130008

.field public static final abc_action_menu_overflow_description:I = 0x7f130009

.field public static final abc_action_mode_done:I = 0x7f13000a

.field public static final abc_activity_chooser_view_see_all:I = 0x7f13000b

.field public static final abc_activitychooserview_choose_application:I = 0x7f13000c

.field public static final abc_capital_off:I = 0x7f13000d

.field public static final abc_capital_on:I = 0x7f13000e

.field public static final abc_menu_alt_shortcut_label:I = 0x7f13000f

.field public static final abc_menu_ctrl_shortcut_label:I = 0x7f130010

.field public static final abc_menu_delete_shortcut_label:I = 0x7f130011

.field public static final abc_menu_enter_shortcut_label:I = 0x7f130012

.field public static final abc_menu_function_shortcut_label:I = 0x7f130013

.field public static final abc_menu_meta_shortcut_label:I = 0x7f130014

.field public static final abc_menu_shift_shortcut_label:I = 0x7f130015

.field public static final abc_menu_space_shortcut_label:I = 0x7f130016

.field public static final abc_menu_sym_shortcut_label:I = 0x7f130017

.field public static final abc_prepend_shortcut_label:I = 0x7f130018

.field public static final abc_search_hint:I = 0x7f130019

.field public static final abc_searchview_description_clear:I = 0x7f13001a

.field public static final abc_searchview_description_query:I = 0x7f13001b

.field public static final abc_searchview_description_search:I = 0x7f13001c

.field public static final abc_searchview_description_submit:I = 0x7f13001d

.field public static final abc_searchview_description_voice:I = 0x7f13001e

.field public static final abc_shareactionprovider_share_with:I = 0x7f13001f

.field public static final abc_shareactionprovider_share_with_application:I = 0x7f130020

.field public static final abc_toolbar_collapse_description:I = 0x7f130021

.field public static final onNavigationEvent:Lo/onBind;

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451


# instance fields
.field public ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:I

.field private final asBinder:I

.field private final asInterface:I

.field private extraCallback:Z

.field private final getInterfaceDescriptor:I

.field private final onMessageChannelReady:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Z

.field private final onRelationshipValidationResult:I

.field private final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/onBind;

    invoke-direct {v0}, Lo/onBind;-><init>()V

    sput-object v0, Lo/extraCallback$onRelationshipValidationResult;->onNavigationEvent:Lo/onBind;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2034
    iput-boolean v0, p0, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback:Z

    .line 2039
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lo/extraCallback$onRelationshipValidationResult;->onMessageChannelReady:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 1066
    iget-boolean v0, p0, Lo/extraCallback$onRelationshipValidationResult;->extraCallback:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1071
    :try_start_0
    iput-boolean v1, p0, Lo/extraCallback$onRelationshipValidationResult;->extraCallback:Z

    .line 1072
    :cond_1
    :goto_0
    iget-object v2, p0, Lo/extraCallback$onRelationshipValidationResult;->onMessageChannelReady:Ljava/util/Queue;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 1084
    iget-boolean v2, p0, Lo/extraCallback$onRelationshipValidationResult;->onPostMessage:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    .line 1076
    iget-object v2, p0, Lo/extraCallback$onRelationshipValidationResult;->onMessageChannelReady:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1079
    :cond_4
    iput-boolean v0, p0, Lo/extraCallback$onRelationshipValidationResult;->extraCallback:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lo/extraCallback$onRelationshipValidationResult;->extraCallback:Z

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DimensionsInfo{mViewportWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->onTransact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodedImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->asInterface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodedImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDecodedImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->onRelationshipValidationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDecodedImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/extraCallback$onRelationshipValidationResult;->getInterfaceDescriptor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
