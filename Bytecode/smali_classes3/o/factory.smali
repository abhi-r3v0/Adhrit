.class public final Lo/factory;
.super Lo/getInitialPrefetchItemCount$extraCallback;


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/io/InputStream;

.field public final asBinder:J

.field public final asInterface:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:J

.field public final onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getInitialPrefetchItemCount$extraCallback;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lo/factory;->onMessageChannelReady:I

    iput-wide p4, p0, Lo/factory;->onPostMessage:J

    iput p6, p0, Lo/factory;->onNavigationEvent:I

    iput-wide p7, p0, Lo/factory;->asBinder:J

    iput p9, p0, Lo/factory;->asInterface:I

    iput-object p10, p0, Lo/factory;->onTransact:Ljava/lang/String;

    iput-wide p11, p0, Lo/factory;->onRelationshipValidationResult:J

    iput-object p13, p0, Lo/factory;->ICustomTabsCallback$Stub:Ljava/io/InputStream;

    return-void
.end method
