.class public abstract Lo/spaceLeft;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/spaceLeft;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lo/computeUInt32Size;->onPostMessage()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Lo/refreshBuffer;

    invoke-direct {v0}, Lo/refreshBuffer;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/writeTag;

    invoke-direct {v0}, Lo/writeTag;-><init>()V

    :goto_0
    sput-object v0, Lo/spaceLeft;->onMessageChannelReady:Lo/spaceLeft;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/spaceLeft;
    .locals 1

    .line 52
    sget-object v0, Lo/spaceLeft;->onMessageChannelReady:Lo/spaceLeft;

    return-object v0
.end method


# virtual methods
.method public abstract extraCallback(Ljava/lang/reflect/AccessibleObject;)V
.end method
