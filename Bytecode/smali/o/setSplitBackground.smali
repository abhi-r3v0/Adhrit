.class public final Lo/setSplitBackground;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ICustomTabsCallback:Ljava/lang/String; = "\r"


# instance fields
.field public final extraCallback:F

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lo/setSplitBackground;->onMessageChannelReady:Ljava/lang/String;

    .line 12
    iput p3, p0, Lo/setSplitBackground;->extraCallback:F

    .line 13
    iput p2, p0, Lo/setSplitBackground;->onNavigationEvent:F

    return-void
.end method
