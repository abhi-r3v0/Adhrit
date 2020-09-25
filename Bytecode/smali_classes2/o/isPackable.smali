.class final Lo/isPackable;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/WireFormat$FieldType;

.field private static final onMessageChannelReady:Lo/WireFormat$FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lo/isPackable;->onPostMessage()Lo/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lo/isPackable;->onMessageChannelReady:Lo/WireFormat$FieldType;

    .line 35
    new-instance v0, Lo/getJavaType;

    invoke-direct {v0}, Lo/getJavaType;-><init>()V

    sput-object v0, Lo/isPackable;->ICustomTabsCallback:Lo/WireFormat$FieldType;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extraCallback()Lo/WireFormat$FieldType;
    .locals 1

    .line 38
    sget-object v0, Lo/isPackable;->onMessageChannelReady:Lo/WireFormat$FieldType;

    return-object v0
.end method

.method static onNavigationEvent()Lo/WireFormat$FieldType;
    .locals 1

    .line 42
    sget-object v0, Lo/isPackable;->ICustomTabsCallback:Lo/WireFormat$FieldType;

    return-object v0
.end method

.method private static onPostMessage()Lo/WireFormat$FieldType;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WireFormat$FieldType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
