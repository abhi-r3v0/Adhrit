.class public Lin/org/npci/commonlibrary/Message;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77257e8997bbec4cL


# instance fields
.field private data:Lin/org/npci/commonlibrary/Data;

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lin/org/npci/commonlibrary/Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/org/npci/commonlibrary/Message;->type:Ljava/lang/String;

    iput-object p2, p0, Lin/org/npci/commonlibrary/Message;->subType:Ljava/lang/String;

    iput-object p3, p0, Lin/org/npci/commonlibrary/Message;->data:Lin/org/npci/commonlibrary/Data;

    return-void
.end method


# virtual methods
.method public getData()Lin/org/npci/commonlibrary/Data;
    .locals 1

    iget-object v0, p0, Lin/org/npci/commonlibrary/Message;->data:Lin/org/npci/commonlibrary/Data;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/org/npci/commonlibrary/Message;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/org/npci/commonlibrary/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lin/org/npci/commonlibrary/Data;)V
    .locals 0

    iput-object p1, p0, Lin/org/npci/commonlibrary/Message;->data:Lin/org/npci/commonlibrary/Data;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/org/npci/commonlibrary/Message;->subType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/org/npci/commonlibrary/Message;->type:Ljava/lang/String;

    return-void
.end method
