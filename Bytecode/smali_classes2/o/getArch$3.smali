.class synthetic Lo/getArch$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getArch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 442
    invoke-static {}, Lo/setContents$onPostMessage;->values()[Lo/setContents$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getArch$3;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    :try_start_0
    sget-object v1, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getArch$3;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getArch$3;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/getArch$3;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
