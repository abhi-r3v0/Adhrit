.class public Lo/createSearchAdManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/getStartServicePackage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/isGooglePlayServicesAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    invoke-static {}, Lo/isGooglePlayServicesAvailable;->onNavigationEvent()Lo/isGooglePlayServicesAvailable;

    move-result-object v0

    sput-object v0, Lo/createSearchAdManager;->onMessageChannelReady:Lo/isGooglePlayServicesAvailable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
