.class public final Lo/ExitIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getLoc_instrument_id;


# static fields
.field private static final onPostMessage:[B


# instance fields
.field private final ICustomTabsCallback:Lo/ImageCustom;

.field private final ICustomTabsCallback$Stub:Lo/LendingTriggerResponse;

.field private final asBinder:Lo/ExitIntentJsonAdapter;

.field private final extraCallback:Ljava/security/interfaces/ECPrivateKey;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lo/ExitIntent;->onPostMessage:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ExitIntent;->extraCallback:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lo/ImageCustom;

    invoke-direct {v0, p1}, Lo/ImageCustom;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lo/ExitIntent;->ICustomTabsCallback:Lo/ImageCustom;

    iput-object p2, p0, Lo/ExitIntent;->onNavigationEvent:[B

    iput-object p3, p0, Lo/ExitIntent;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/ExitIntent;->ICustomTabsCallback$Stub:Lo/LendingTriggerResponse;

    iput-object p5, p0, Lo/ExitIntent;->asBinder:Lo/ExitIntentJsonAdapter;

    return-void
.end method
