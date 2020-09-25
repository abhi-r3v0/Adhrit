.class public final Lo/setDrawerListener$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J+\u0010\u000c\u001a\u00020\t2#\u0010\r\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J+\u0010\u000e\u001a\u00020\t2#\u0010\r\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J+\u0010\u000f\u001a\u00020\t2#\u0010\r\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004J\u0012\u0010\u000f\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016R-\u0010\u0003\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R-\u0010\n\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R-\u0010\u000b\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/utils/animation/DslAnimationListener;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "()V",
        "animationEndListener",
        "Lkotlin/Function1;",
        "Landroid/view/animation/Animation;",
        "Lkotlin/ParameterName;",
        "name",
        "animation",
        "",
        "animationRepeatListener",
        "animationStartListener",
        "onAnimationEnd",
        "func",
        "onAnimationRepeat",
        "onAnimationStart",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CropOverlayView:I = 0x7f0b0004

.field public static final CropProgressBar:I = 0x7f0b0005

.field public static final ImageView_image:I = 0x7f0b0007

.field public static final center:I = 0x7f0b0198

.field public static final centerCrop:I = 0x7f0b0199

.field public static final centerInside:I = 0x7f0b019c

.field public static final fitCenter:I = 0x7f0b0349

.field public static final off:I = 0x7f0b05eb

.field public static final on:I = 0x7f0b05f3

.field public static final onTouch:I = 0x7f0b05f7

.field public static final oval:I = 0x7f0b060c

.field public static final rectangle:I = 0x7f0b06be


# instance fields
.field public ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/animation/Animation;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/animation/Animation;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/setDrawerListener$onPostMessage;->extraCallback:Lo/onDisconnectSetValue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
