.class public Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;
.super Ljava/lang/RuntimeException;


# instance fields
.field protected a:Ljava/lang/Exception;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Missing message string"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    iput-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1, p2}, Lorg/apache/xml/security/utils/I18n;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    iput-object p1, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/xml/security/utils/I18n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    iput-object p1, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-super {p0, v1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v1, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\nOriginal Exception was "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
