.class public final Lo/getIconUri$onMessageChannelReady;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIconUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

.field public static final alpha:I = 0x7f040035

.field public static final font:I = 0x7f0401bc

.field public static final fontProviderAuthority:I = 0x7f0401be

.field public static final fontProviderCerts:I = 0x7f0401bf

.field public static final fontProviderFetchStrategy:I = 0x7f0401c0

.field public static final fontProviderFetchTimeout:I = 0x7f0401c1

.field public static final fontProviderPackage:I = 0x7f0401c2

.field public static final fontProviderQuery:I = 0x7f0401c3

.field public static final fontStyle:I = 0x7f0401c4

.field public static final fontVariationSettings:I = 0x7f0401c5

.field public static final fontWeight:I = 0x7f0401c6

.field public static final ttcIndex:I = 0x7f040460


# instance fields
.field public ICustomTabsCallback:F

.field public extraCallback:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2098
    invoke-static {}, Lo/setContents$onPostMessage;->values()[Lo/setContents$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getIconUri$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

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
    sget-object v0, Lo/getIconUri$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getIconUri$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1013
    invoke-direct {p0, v0, v0}, Lo/getIconUri$onMessageChannelReady;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput p1, p0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 1009
    iput p2, p0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2017
    iget v1, p0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    iget v1, p0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
