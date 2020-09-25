.class public final enum Lo/rotateRight$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/rotateRight$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/rotateRight$extraCallback;

.field public static final enum onMessageChannelReady:Lo/rotateRight$extraCallback;

.field private static final synthetic onNavigationEvent:[Lo/rotateRight$extraCallback;

.field public static final enum onPostMessage:Lo/rotateRight$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lo/rotateRight$extraCallback;

    const/4 v1, 0x0

    const-string v2, "PROCESSED"

    invoke-direct {v0, v2, v1}, Lo/rotateRight$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    .line 77
    new-instance v0, Lo/rotateRight$extraCallback;

    const/4 v2, 0x1

    const-string v3, "REFUSED"

    invoke-direct {v0, v3, v2}, Lo/rotateRight$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    .line 81
    new-instance v0, Lo/rotateRight$extraCallback;

    const/4 v3, 0x2

    const-string v4, "DROPPED"

    invoke-direct {v0, v4, v3}, Lo/rotateRight$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rotateRight$extraCallback;->extraCallback:Lo/rotateRight$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/rotateRight$extraCallback;

    .line 69
    sget-object v5, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/rotateRight$extraCallback;->onNavigationEvent:[Lo/rotateRight$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/rotateRight$extraCallback;
    .locals 1

    .line 69
    const-class v0, Lo/rotateRight$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/rotateRight$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/rotateRight$extraCallback;
    .locals 1

    .line 69
    sget-object v0, Lo/rotateRight$extraCallback;->onNavigationEvent:[Lo/rotateRight$extraCallback;

    invoke-virtual {v0}, [Lo/rotateRight$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/rotateRight$extraCallback;

    return-object v0
.end method
