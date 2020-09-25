.class public final Lo/setOf;
.super Lo/getInitialPrefetchItemCount$extraCallback;


# instance fields
.field public final ICustomTabsCallback$Stub:I

.field public final asBinder:I

.field public final asInterface:I

.field public final getInterfaceDescriptor:Ljava/io/InputStream;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:J

.field public final onTransact:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getInitialPrefetchItemCount$extraCallback;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lo/setOf;->onMessageChannelReady:I

    iput-wide p4, p0, Lo/setOf;->onPostMessage:J

    iput-object p6, p0, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    iput p7, p0, Lo/setOf;->asBinder:I

    iput p8, p0, Lo/setOf;->onTransact:I

    iput p9, p0, Lo/setOf;->ICustomTabsCallback$Stub:I

    iput-wide p10, p0, Lo/setOf;->onRelationshipValidationResult:J

    iput p12, p0, Lo/setOf;->asInterface:I

    iput-object p13, p0, Lo/setOf;->getInterfaceDescriptor:Ljava/io/InputStream;

    return-void
.end method
