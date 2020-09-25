.class public final Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# static fields
.field public static final ICustomTabsCallback:[[B

.field private static final ICustomTabsCallback$Stub:I = 0x10

.field private static final ICustomTabsService:[Z

.field private static final asBinder:I = 0xc

.field private static final asInterface:I = 0x1a

.field public static final extraCallback:[I

.field private static final getInterfaceDescriptor:[D

.field public static final onMessageChannelReady:[J

.field public static final onNavigationEvent:[Ljava/lang/String;

.field public static final onPostMessage:[B

.field private static final onRelationshipValidationResult:[F

.field private static final onTransact:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->extraCallback:[I

    new-array v1, v0, [J

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[J

    new-array v1, v0, [F

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:[F

    new-array v1, v0, [D

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor:[D

    new-array v1, v0, [Z

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:[[B

    new-array v0, v0, [B

    sput-object v0, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    return-void
.end method

.method public static final onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v0

    invoke-virtual {p0, p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(II)V

    return v1
.end method
