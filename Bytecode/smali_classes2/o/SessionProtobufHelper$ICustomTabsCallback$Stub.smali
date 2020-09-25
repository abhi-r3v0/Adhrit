.class final Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionProtobufHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# instance fields
.field final ICustomTabsCallback:[B

.field final onPostMessage:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    new-array p1, p1, [B

    iput-object p1, p0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->ICustomTabsCallback:[B

    .line 1178
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->onPostMessage:Lcom/google/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 1172
    invoke-direct {p0, p1}, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;-><init>(I)V

    return-void
.end method
