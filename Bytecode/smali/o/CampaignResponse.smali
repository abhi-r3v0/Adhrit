.class public Lo/CampaignResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CampaignResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CampaignResponseJsonAdapter<",
        "TINFO;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/CampaignResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CampaignResponseJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/CampaignResponse;

    invoke-direct {v0}, Lo/CampaignResponse;-><init>()V

    sput-object v0, Lo/CampaignResponse;->onNavigationEvent:Lo/CampaignResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CampaignResponseJsonAdapter<",
            "TINFO;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lo/CampaignResponse;->onNavigationEvent:Lo/CampaignResponseJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
