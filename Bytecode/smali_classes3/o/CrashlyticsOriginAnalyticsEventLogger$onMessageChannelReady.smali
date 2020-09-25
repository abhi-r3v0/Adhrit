.class abstract Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onMessageChannelReady"
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
        "Ljava/lang/Object;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITE;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    .line 347
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->ICustomTabsCallback:I

    .line 348
    iput-object p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

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

    .line 363
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .line 358
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->ICustomTabsCallback:I

    return v0
.end method

.method public final d_()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    return-object v0
.end method
