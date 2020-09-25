.class public final enum Lo/ringRead$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ringRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ringRead$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/ringRead$extraCallback;

.field public static final enum CONNECTED:Lo/ringRead$extraCallback;

.field public static final enum CONNECTING:Lo/ringRead$extraCallback;

.field public static final enum DISCONNECTED:Lo/ringRead$extraCallback;

.field public static final enum DISCONNECTING:Lo/ringRead$extraCallback;

.field public static final enum NONE:Lo/ringRead$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v0, Lo/ringRead$extraCallback;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/ringRead$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ringRead$extraCallback;->NONE:Lo/ringRead$extraCallback;

    .line 54
    new-instance v0, Lo/ringRead$extraCallback;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lo/ringRead$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ringRead$extraCallback;->CONNECTING:Lo/ringRead$extraCallback;

    .line 55
    new-instance v0, Lo/ringRead$extraCallback;

    const/4 v3, 0x2

    const-string v4, "CONNECTED"

    invoke-direct {v0, v4, v3}, Lo/ringRead$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    .line 56
    new-instance v0, Lo/ringRead$extraCallback;

    const/4 v4, 0x3

    const-string v5, "DISCONNECTING"

    invoke-direct {v0, v5, v4}, Lo/ringRead$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ringRead$extraCallback;->DISCONNECTING:Lo/ringRead$extraCallback;

    .line 57
    new-instance v0, Lo/ringRead$extraCallback;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTED"

    invoke-direct {v0, v6, v5}, Lo/ringRead$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/ringRead$extraCallback;

    .line 52
    sget-object v7, Lo/ringRead$extraCallback;->NONE:Lo/ringRead$extraCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/ringRead$extraCallback;->CONNECTING:Lo/ringRead$extraCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/ringRead$extraCallback;->DISCONNECTING:Lo/ringRead$extraCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/ringRead$extraCallback;->$VALUES:[Lo/ringRead$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ringRead$extraCallback;
    .locals 1

    .line 52
    const-class v0, Lo/ringRead$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/ringRead$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/ringRead$extraCallback;
    .locals 1

    .line 52
    sget-object v0, Lo/ringRead$extraCallback;->$VALUES:[Lo/ringRead$extraCallback;

    invoke-virtual {v0}, [Lo/ringRead$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ringRead$extraCallback;

    return-object v0
.end method
