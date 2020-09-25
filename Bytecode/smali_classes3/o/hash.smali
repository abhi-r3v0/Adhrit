.class public Lo/hash;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public email:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lo/hash;->email:Ljava/lang/String;

    return-object v0
.end method
