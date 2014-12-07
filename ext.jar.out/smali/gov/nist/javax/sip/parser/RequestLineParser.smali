.class public Lgov/nist/javax/sip/parser/RequestLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "RequestLineParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1    # Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "method_keywordLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "method_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v4, 0x9

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "REGISTER sip:192.168.0.68 SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "REGISTER sip:company.com SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "INVITE sip:3660@166.35.231.140 SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "INVITE sip:user@company.com SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "REGISTER sip:[2001::1]:5060;transport=tcp SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "REGISTER sip:[2002:800:700:600:30:4:6:1]:5060;transport=udp SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "REGISTER sip:[3ffe:800:700::30:4:6:1]:5060;transport=tls SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "REGISTER sip:[2001:720:1710:0:201:29ff:fe21:f403]:5060;transport=udp SIP/2.0\n"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "OPTIONS sip:135.180.130.133 SIP/2.0\n"

    aput-object v5, v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    new-instance v3, Lgov/nist/javax/sip/parser/RequestLineParser;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/RequestLine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v5, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->method()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v6, "sip_urlLexer"

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v6, "request_lineLexer"

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->sipVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v5, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    if-eqz v5, :cond_1

    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    if-eqz v6, :cond_2

    const-string v6, "parse"

    invoke-virtual {p0, v6}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v5
.end method
