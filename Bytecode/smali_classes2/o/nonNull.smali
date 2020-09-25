.class public final Lo/nonNull;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/nonNull;->host:Ljava/lang/String;

    .line 31
    iput p2, p0, Lo/nonNull;->port:I

    return-void
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/nonNull;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 39
    iget v0, p0, Lo/nonNull;->port:I

    return v0
.end method
