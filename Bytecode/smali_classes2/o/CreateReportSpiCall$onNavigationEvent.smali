.class abstract Lo/CreateReportSpiCall$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onNavigationEvent"
.end annotation


# instance fields
.field onPostMessage:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p1, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/Object;J)F
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/Object;JF)V
.end method

.method public abstract extraCallback(Ljava/lang/Object;J)B
.end method

.method public abstract extraCallback(Ljava/lang/Object;JD)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Object;J)D
.end method

.method public abstract onMessageChannelReady(J[BJJ)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Object;JZ)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;JB)V
.end method

.method public abstract onPostMessage(J)B
.end method

.method public abstract onPostMessage(Ljava/lang/Object;J)Z
.end method
