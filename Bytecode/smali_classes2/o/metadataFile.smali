.class final Lo/metadataFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/metadataFile$onMessageChannelReady;,
        Lo/metadataFile$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/JniNativeApi$onPostMessage;

.field static final ICustomTabsCallback$Stub:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final asBinder:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final asInterface:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final extraCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final onMessageChannelReady:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static final onNavigationEvent:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final onPostMessage:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final onRelationshipValidationResult:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field static final onTransact:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/metadataFile$4;

    invoke-direct {v0}, Lo/metadataFile$4;-><init>()V

    sput-object v0, Lo/metadataFile;->ICustomTabsCallback:Lo/JniNativeApi$onPostMessage;

    .line 85
    new-instance v0, Lo/metadataFile$2;

    invoke-direct {v0}, Lo/metadataFile$2;-><init>()V

    sput-object v0, Lo/metadataFile;->extraCallback:Lo/JniNativeApi;

    .line 99
    new-instance v0, Lo/metadataFile$1;

    invoke-direct {v0}, Lo/metadataFile$1;-><init>()V

    sput-object v0, Lo/metadataFile;->onNavigationEvent:Lo/JniNativeApi;

    .line 113
    new-instance v0, Lo/metadataFile$8;

    invoke-direct {v0}, Lo/metadataFile$8;-><init>()V

    sput-object v0, Lo/metadataFile;->onMessageChannelReady:Lo/JniNativeApi;

    .line 132
    new-instance v0, Lo/metadataFile$7;

    invoke-direct {v0}, Lo/metadataFile$7;-><init>()V

    sput-object v0, Lo/metadataFile;->onPostMessage:Lo/JniNativeApi;

    .line 146
    new-instance v0, Lo/metadataFile$10;

    invoke-direct {v0}, Lo/metadataFile$10;-><init>()V

    sput-object v0, Lo/metadataFile;->asBinder:Lo/JniNativeApi;

    .line 171
    new-instance v0, Lo/metadataFile$6;

    invoke-direct {v0}, Lo/metadataFile$6;-><init>()V

    sput-object v0, Lo/metadataFile;->asInterface:Lo/JniNativeApi;

    .line 185
    new-instance v0, Lo/metadataFile$9;

    invoke-direct {v0}, Lo/metadataFile$9;-><init>()V

    sput-object v0, Lo/metadataFile;->ICustomTabsCallback$Stub:Lo/JniNativeApi;

    .line 199
    new-instance v0, Lo/metadataFile$15;

    invoke-direct {v0}, Lo/metadataFile$15;-><init>()V

    sput-object v0, Lo/metadataFile;->onRelationshipValidationResult:Lo/JniNativeApi;

    .line 213
    new-instance v0, Lo/metadataFile$3;

    invoke-direct {v0}, Lo/metadataFile$3;-><init>()V

    sput-object v0, Lo/metadataFile;->onTransact:Lo/JniNativeApi;

    return-void
.end method

.method static onMessageChannelReady(Lo/SessionFiles;Ljava/lang/String;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lo/SessionFiles;->getInterfaceDescriptor()I

    move-result v0

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    return v0

    .line 79
    :cond_0
    new-instance p2, Lcom/squareup/moshi/JsonDataException;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const/4 p1, 0x1

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const/4 p1, 0x2

    .line 1508
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v1, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v2, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object p0, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v0, v1, v2, p0}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p1

    const-string p0, "Expected %s but was %s at path %s"

    .line 80
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
