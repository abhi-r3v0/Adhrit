.class public final Lo/startConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Lo/getLayoutInflater$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:J


# instance fields
.field private final onMessageChannelReady:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/startConnection;->onNavigationEvent:J

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/startConnection;->onMessageChannelReady:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1032
    new-instance v7, Lo/getLayoutInflater$extraCallback;

    .line 1042
    iget-object v0, p0, Lo/startConnection;->onMessageChannelReady:Landroid/app/ActivityManager;

    .line 1043
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x400000

    const/high16 v1, 0x400000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x4000000

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x600000

    const/high16 v1, 0x600000

    goto :goto_0

    .line 1051
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    const/high16 v0, 0x800000

    const/high16 v1, 0x800000

    goto :goto_0

    .line 1054
    :cond_2
    div-int/lit8 v0, v0, 0x4

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    .line 1033
    sget-wide v5, Lo/startConnection;->onNavigationEvent:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/getLayoutInflater$extraCallback;-><init>(IIIIJ)V

    return-object v7
.end method
