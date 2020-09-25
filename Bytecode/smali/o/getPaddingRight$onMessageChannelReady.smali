.class public final Lo/getPaddingRight$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "getInterpolation"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getPaddingRight$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getPaddingRight$onMessageChannelReady;

    invoke-direct {v0}, Lo/getPaddingRight$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/getPaddingRight$onMessageChannelReady;->onNavigationEvent:Lo/getPaddingRight$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    .line 182
    new-instance v0, Lo/setRating;

    invoke-direct {v0}, Lo/setRating;-><init>()V

    invoke-virtual {v0, p1}, Lo/getScale;->getInterpolation(F)F

    move-result p1

    return p1
.end method
