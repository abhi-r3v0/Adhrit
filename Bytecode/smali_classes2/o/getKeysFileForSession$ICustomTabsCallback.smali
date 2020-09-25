.class public final enum Lo/getKeysFileForSession$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getKeysFileForSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getKeysFileForSession$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getKeysFileForSession$ICustomTabsCallback;

.field public static final enum AckUserWrite:Lo/getKeysFileForSession$ICustomTabsCallback;

.field public static final enum ListenComplete:Lo/getKeysFileForSession$ICustomTabsCallback;

.field public static final enum Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

.field public static final enum Overwrite:Lo/getKeysFileForSession$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "Overwrite"

    invoke-direct {v0, v2, v1}, Lo/getKeysFileForSession$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->Overwrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    .line 24
    new-instance v0, Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "Merge"

    invoke-direct {v0, v3, v2}, Lo/getKeysFileForSession$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

    .line 25
    new-instance v0, Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "AckUserWrite"

    invoke-direct {v0, v4, v3}, Lo/getKeysFileForSession$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->AckUserWrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    .line 26
    new-instance v0, Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "ListenComplete"

    invoke-direct {v0, v5, v4}, Lo/getKeysFileForSession$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->ListenComplete:Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getKeysFileForSession$ICustomTabsCallback;

    .line 22
    sget-object v6, Lo/getKeysFileForSession$ICustomTabsCallback;->Overwrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->AckUserWrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getKeysFileForSession$ICustomTabsCallback;->$VALUES:[Lo/getKeysFileForSession$ICustomTabsCallback;

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

.method public static valueOf(Ljava/lang/String;)Lo/getKeysFileForSession$ICustomTabsCallback;
    .locals 1

    .line 22
    const-class v0, Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getKeysFileForSession$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/getKeysFileForSession$ICustomTabsCallback;
    .locals 1

    .line 22
    sget-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->$VALUES:[Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/getKeysFileForSession$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getKeysFileForSession$ICustomTabsCallback;

    return-object v0
.end method
