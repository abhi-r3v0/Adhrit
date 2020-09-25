.class public final enum Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LogFileManager$DirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

.field public static final enum V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

.field public static final enum V2:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "V1"

    invoke-direct {v0, v2, v1}, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "V2"

    invoke-direct {v0, v3, v2}, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V2:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    .line 22
    sget-object v4, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->$VALUES:[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;
    .locals 1

    .line 22
    const-class v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;
    .locals 1

    .line 22
    sget-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->$VALUES:[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    return-object v0
.end method
