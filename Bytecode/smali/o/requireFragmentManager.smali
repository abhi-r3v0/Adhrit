.class public final Lo/requireFragmentManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requireFragmentManager$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u001c\u001a\u00020\u0012H\u0007RW\u0010\u0003\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 \u0007*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\u0005 \u0007*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 \u0007*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR#\u0010\u000c\u001a\n \u0007*\u0004\u0018\u00010\r0\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/assets/helper/persistance/Converters;",
        "",
        "()V",
        "adapter",
        "Lcom/squareup/moshi/JsonAdapter;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "getAdapter",
        "()Lcom/squareup/moshi/JsonAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "type",
        "Ljava/lang/reflect/ParameterizedType;",
        "getType",
        "()Ljava/lang/reflect/ParameterizedType;",
        "type$delegate",
        "intArrayToString",
        "",
        "intArray",
        "intToOrientation",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "ordinal",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "orientationToInt",
        "orientation",
        "(Landroid/graphics/drawable/GradientDrawable$Orientation;)Ljava/lang/Integer;",
        "stringToIntArray",
        "value",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/requireFragmentManager$onNavigationEvent;


# instance fields
.field final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/requireFragmentManager$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/requireFragmentManager$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/requireFragmentManager;->onPostMessage:Lo/requireFragmentManager$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lo/requireFragmentManager$ICustomTabsCallback;->extraCallback:Lo/requireFragmentManager$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 12
    iput-object v2, p0, Lo/requireFragmentManager;->onMessageChannelReady:Lo/isSameListener;

    .line 13
    new-instance v0, Lo/requireFragmentManager$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/requireFragmentManager$onMessageChannelReady;-><init>(Lo/requireFragmentManager;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 13
    iput-object v1, p0, Lo/requireFragmentManager;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/requireFragmentManager;)Ljava/lang/reflect/ParameterizedType;
    .locals 0

    .line 3000
    iget-object p0, p0, Lo/requireFragmentManager;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable$Orientation;->values()[Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static onPostMessage(Landroid/graphics/drawable/GradientDrawable$Orientation;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
