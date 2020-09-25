.class final Lo/isBrowsable$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# static fields
.field static final onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;


# instance fields
.field volatile ICustomTabsCallback:Ljava/lang/Thread;

.field volatile onMessageChannelReady:Lo/isBrowsable$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Lo/isBrowsable$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/isBrowsable$ICustomTabsCallback$Stub;-><init>(B)V

    sput-object v0, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/isBrowsable$onMessageChannelReady;->onMessageChannelReady(Lo/isBrowsable$ICustomTabsCallback$Stub;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
