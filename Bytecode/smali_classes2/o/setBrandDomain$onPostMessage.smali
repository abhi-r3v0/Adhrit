.class public final enum Lo/setBrandDomain$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setBrandDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setBrandDomain$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum onMessageChannelReady:Lo/setBrandDomain$onPostMessage;

.field private static enum onNavigationEvent:Lo/setBrandDomain$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo/setBrandDomain$onPostMessage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setBrandDomain$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setBrandDomain$onPostMessage;->onNavigationEvent:Lo/setBrandDomain$onPostMessage;

    .line 2
    new-instance v0, Lo/setBrandDomain$onPostMessage;

    const-string v1, "ANDROID_FIREBASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/setBrandDomain$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setBrandDomain$onPostMessage;->onMessageChannelReady:Lo/setBrandDomain$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
