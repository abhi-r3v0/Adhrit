.class public final Lo/setListSelector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# static fields
.field private static final onMessageChannelReady:Lo/setListSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/setListSelector;

    invoke-direct {v0}, Lo/setListSelector;-><init>()V

    sput-object v0, Lo/setListSelector;->onMessageChannelReady:Lo/setListSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/setListSelector;
    .locals 1

    .line 13
    sget-object v0, Lo/setListSelector;->onMessageChannelReady:Lo/setListSelector;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
