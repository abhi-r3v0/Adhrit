.class abstract Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;
.super Ljava/lang/ref/WeakReference;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field private onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;ITE;)V"
        }
    .end annotation

    .line 653
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 654
    iput p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->ICustomTabsCallback:I

    .line 655
    iput-object p4, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    return-void
.end method


# virtual methods
.method public final b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .line 665
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->ICustomTabsCallback:I

    return v0
.end method

.method public final d_()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
