.class final Lo/buildInstanceIdentifierChanged$asInterface;
.super Lo/buildInstanceIdentifierChanged$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asInterface"
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-direct {p0, p2}, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged$asInterface;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$asInterface;->extraCallback:Ljava/lang/String;

    return-object v0
.end method
