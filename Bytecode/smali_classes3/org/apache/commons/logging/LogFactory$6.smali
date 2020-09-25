.class final Lorg/apache/commons/logging/LogFactory$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$def:Ljava/lang/String;

.field private final val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$6;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$6;->val$def:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .line 1445
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$6;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$6;->val$def:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
