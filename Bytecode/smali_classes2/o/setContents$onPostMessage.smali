.class public final enum Lo/setContents$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setContents$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/setContents$onPostMessage;

.field public static final enum ADDED:Lo/setContents$onPostMessage;

.field public static final enum METADATA:Lo/setContents$onPostMessage;

.field public static final enum MODIFIED:Lo/setContents$onPostMessage;

.field public static final enum REMOVED:Lo/setContents$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lo/setContents$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "REMOVED"

    invoke-direct {v0, v2, v1}, Lo/setContents$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    .line 27
    new-instance v0, Lo/setContents$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "ADDED"

    invoke-direct {v0, v3, v2}, Lo/setContents$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    .line 28
    new-instance v0, Lo/setContents$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "MODIFIED"

    invoke-direct {v0, v4, v3}, Lo/setContents$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    .line 29
    new-instance v0, Lo/setContents$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "METADATA"

    invoke-direct {v0, v5, v4}, Lo/setContents$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setContents$onPostMessage;

    .line 25
    sget-object v6, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    aput-object v6, v5, v1

    sget-object v1, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    aput-object v1, v5, v2

    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setContents$onPostMessage;->$VALUES:[Lo/setContents$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setContents$onPostMessage;
    .locals 1

    .line 25
    const-class v0, Lo/setContents$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setContents$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/setContents$onPostMessage;
    .locals 1

    .line 25
    sget-object v0, Lo/setContents$onPostMessage;->$VALUES:[Lo/setContents$onPostMessage;

    invoke-virtual {v0}, [Lo/setContents$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setContents$onPostMessage;

    return-object v0
.end method
