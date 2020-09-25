.class public Lcom/freshchat/consumer/sdk/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final da:Ljava/nio/charset/Charset;

.field public static final db:Ljava/lang/String;

.field public static final dc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/b/b;->da:Ljava/nio/charset/Charset;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/b/b;->db:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/freshchat/consumer/sdk/b/b;->dc:[Ljava/lang/String;

    return-void
.end method
